(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g185763_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185765_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185767_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185772_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185775_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185780_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185783_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185788_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185791_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185796_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g185799_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx180928_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx180928_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx180931_)
        (let* ((_g180934180958_
                (lambda (_g180935180954_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g180935180954_))))
               (_g180933181261_
                (lambda (_g180935180962_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g180935180962_))
                      (let ((_e180940180965_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g180935180962_))))
                        (let ((_hd180939180969_
                               (let ()
                                 (declare (not safe))
                                 (##car _e180940180965_)))
                              (_tl180938180972_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e180940180965_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl180938180972_))
                              (let ((_e180943180975_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl180938180972_))))
                                (let ((_hd180942180979_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e180943180975_)))
                                      (_tl180941180982_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e180943180975_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl180941180982_))
                                      (let ((_g185734_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl180941180982_
                                                '0))))
                                        (begin
                                          (let ((_g185735_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g185734_)
                                                       (##vector-length
                                                        _g185734_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g185735_ 2)))
                                                (error "Context expects 2 values"
                                                       _g185735_)))
                                          (let ((_target180944180985_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g185734_ 0)))
                                                (_tl180946180988_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g185734_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl180946180988_))
                                                (letrec ((_loop180947180991_
                                                          (lambda (_hd180945180995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause180951180998_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd180945180995_))
                        (let ((_e180948181001_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd180945180995_))))
                          (let ((_lp-hd180949181005_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e180948181001_)))
                                (_lp-tl180950181008_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e180948181001_))))
                            (_loop180947180991_
                             _lp-tl180950181008_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd180949181005_
                                     _clause180951180998_)))))
                        (let ((_clause180952181011_
                               (reverse _clause180951180998_)))
                          ((lambda (_L181015_ _L181017_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L181017_))
                                 (let* ((_g181036181053_
                                         (lambda (_g181037181049_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g181037181049_))))
                                        (_g181035181114_
                                         (lambda (_g181037181057_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g181037181057_))
                                               (let ((_g185736_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g181037181057_
                                                         '0))))
                                                 (begin
                                                   (let ((_g185737_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g185736_)
                        (##vector-length _g185736_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g185737_ 2)))
                 (error "Context expects 2 values" _g185737_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target181039181060_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g185736_
                                                             0)))
                                                         (_tl181041181063_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g185736_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl181041181063_))
                                                         (letrec ((_loop181042181066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd181040181070_ _clause181046181073_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd181040181070_))
                                 (let ((_e181043181076_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd181040181070_))))
                                   (let ((_lp-hd181044181080_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e181043181076_)))
                                         (_lp-tl181045181083_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e181043181076_))))
                                     (_loop181042181066_
                                      _lp-tl181045181083_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd181044181080_
                                              _clause181046181073_)))))
                                 (let ((_clause181047181086_
                                        (reverse _clause181046181073_)))
                                   ((lambda (_L181090_)
                                      (let ()
                                        (let ((__tmp185749
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp185738
                                               (let ((__tmp185747
                                                      (let ((__tmp185748
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp185748 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp185739
                                                      (let ((__tmp185740
                                                             (let ((__tmp185746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp185741
                            (let ((__tmp185745
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp185742
                                   (let ((__tmp185743
                                          (let ((__tmp185744
                                                 (lambda (_g181105181108_
                                                          _g181106181111_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g181105181108_
                                                           _g181106181111_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp185744
                                                    '()
                                                    _L181090_))))
                                     (declare (not safe))
                                     (cons _L181017_ __tmp185743))))
                              (declare (not safe))
                              (cons __tmp185745 __tmp185742))))
                       (declare (not safe))
                       (cons __tmp185746 __tmp185741))))
                (declare (not safe))
                (cons __tmp185740 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp185747
                                                       __tmp185739))))
                                          (declare (not safe))
                                          (cons __tmp185749 __tmp185738))))
                                    _clause181047181086_))))))
                   (_loop181042181066_ _target181039181060_ '()))
                 (_g181036181053_ _g181037181057_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g181036181053_
                                                _g181037181057_)))))
                                   (_g181035181114_
                                    (let ((__tmp185752
                                           (lambda (_clause181118_)
                                             (let* ((___stx185681185682_
                                                     _clause181118_)
                                                    (_g181122181149_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx185681185682_)))))
                                               (let ((___kont185684185685_
                                                      (lambda (_L181234_
                                                               _L181236_)
                                                        (let ((__tmp185753
                                                               (let ((__tmp185754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp185756
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp185755
                                     (let ()
                                       (declare (not safe))
                                       (cons _L181234_ '()))))
                                (declare (not safe))
                                (cons __tmp185756 __tmp185755))))
                         (declare (not safe))
                         (cons __tmp185754 '()))))
                  (declare (not safe))
                  (cons _L181236_ __tmp185753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont185686185687_
                                                      (lambda (_L181186_
                                                               _L181188_
                                                               _L181189_)
                                                        (let ((__tmp185757
                                                               (let ((__tmp185758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp185759
                                     (let ((__tmp185761
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp185760
                                            (let ()
                                              (declare (not safe))
                                              (cons _L181186_ '()))))
                                       (declare (not safe))
                                       (cons __tmp185761 __tmp185760))))
                                (declare (not safe))
                                (cons __tmp185759 '()))))
                         (declare (not safe))
                         (cons _L181188_ __tmp185758))))
                  (declare (not safe))
                  (cons _L181189_ __tmp185757)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx185681185682_))
                                                     (let ((_e181128181214_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx185681185682_))))
                                                       (let ((_tl181126181221_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e181128181214_)))
                     (_hd181127181218_
                      (let () (declare (not safe)) (##car _e181128181214_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl181126181221_))
                     (let ((_e181131181224_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl181126181221_))))
                       (let ((_tl181129181231_
                              (let ()
                                (declare (not safe))
                                (##cdr _e181131181224_)))
                             (_hd181130181228_
                              (let ()
                                (declare (not safe))
                                (##car _e181131181224_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl181129181231_))
                             (___kont185684185685_
                              _hd181130181228_
                              _hd181127181218_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl181129181231_))
                                 (let ((_e181143181176_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl181129181231_))))
                                   (let ((_tl181141181183_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e181143181176_)))
                                         (_hd181142181180_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e181143181176_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl181141181183_))
                                         (___kont185686185687_
                                          _hd181142181180_
                                          _hd181130181228_
                                          _hd181127181218_)
                                         (let ()
                                           (declare (not safe))
                                           (_g181122181149_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g181122181149_))))))
                     (let () (declare (not safe)) (_g181122181149_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g181122181149_)))))))
                                          (__tmp185750
                                           (let ((__tmp185751
                                                  (lambda (_g181252181255_
                                                           _g181253181258_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g181252181255_
                                                            _g181253181258_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp185751
                                                     '()
                                                     _L181015_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp185752 __tmp185750))))
                                 (_g180934180958_ _g180935180962_)))
                           _clause180952181011_
                           _hd180942180979_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop180947180991_
                                                   _target180944180985_
                                                   '()))
                                                (_g180934180958_
                                                 _g180935180962_)))))
                                      (_g180934180958_ _g180935180962_))))
                              (_g180934180958_ _g180935180962_))))
                      (_g180934180958_ _g180935180962_)))))
          (_g180933181261_ _stx180931_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj185724
             (make-object gerbil/core$<MOP>$<MOP:2>#class-type-info::t '15)))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185724
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185724
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185724
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185724
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185724
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185724
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185724
           ':init!
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185762 |gxc[1]#_g185763_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185724
           __tmp185762
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185764 |gxc[1]#_g185765_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185724
           __tmp185764
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185766 |gxc[1]#_g185767_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185724
           __tmp185766
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185768
               (let ((__tmp185773
                      (let ((__tmp185774 |gxc[1]#_g185775_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp185774)))
                     (__tmp185769
                      (let ((__tmp185770
                             (let ((__tmp185771 |gxc[1]#_g185772_|))
                               (declare (not safe))
                               (cons 'bindings __tmp185771))))
                        (declare (not safe))
                        (cons __tmp185770 '()))))
                 (declare (not safe))
                 (cons __tmp185773 __tmp185769))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185724
           __tmp185768
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185776
               (let ((__tmp185781
                      (let ((__tmp185782 |gxc[1]#_g185783_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp185782)))
                     (__tmp185777
                      (let ((__tmp185778
                             (let ((__tmp185779 |gxc[1]#_g185780_|))
                               (declare (not safe))
                               (cons 'bindings __tmp185779))))
                        (declare (not safe))
                        (cons __tmp185778 '()))))
                 (declare (not safe))
                 (cons __tmp185781 __tmp185777))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185724
           __tmp185776
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185784
               (let ((__tmp185789
                      (let ((__tmp185790 |gxc[1]#_g185791_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp185790)))
                     (__tmp185785
                      (let ((__tmp185786
                             (let ((__tmp185787 |gxc[1]#_g185788_|))
                               (declare (not safe))
                               (cons 'bindings __tmp185787))))
                        (declare (not safe))
                        (cons __tmp185786 '()))))
                 (declare (not safe))
                 (cons __tmp185789 __tmp185785))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185724
           __tmp185784
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp185792
               (let ((__tmp185797
                      (let ((__tmp185798 |gxc[1]#_g185799_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp185798)))
                     (__tmp185793
                      (let ((__tmp185794
                             (let ((__tmp185795 |gxc[1]#_g185796_|))
                               (declare (not safe))
                               (cons 'bindings __tmp185795))))
                        (declare (not safe))
                        (cons __tmp185794 '()))))
                 (declare (not safe))
                 (cons __tmp185797 __tmp185793))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj185724
           __tmp185792
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj185724))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx181267_)
        (let* ((_g181271181285_
                (lambda (_g181272181281_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g181272181281_))))
               (_g181270181326_
                (lambda (_g181272181289_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g181272181289_))
                      (let ((_e181276181292_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g181272181289_))))
                        (let ((_hd181275181296_
                               (let ()
                                 (declare (not safe))
                                 (##car _e181276181292_)))
                              (_tl181274181299_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e181276181292_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl181274181299_))
                              (let ((_e181279181302_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl181274181299_))))
                                (let ((_hd181278181306_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e181279181302_)))
                                      (_tl181277181309_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e181279181302_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl181277181309_))
                                      ((lambda (_L181312_)
                                         (let ((__tmp185807
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp185800
                                                (let ((__tmp185806
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp185801
                                                       (let ((__tmp185802
                                                              (let ((__tmp185805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp185803
                             (let ((__tmp185804
                                    (let ()
                                      (declare (not safe))
                                      (cons _L181312_ '()))))
                               (declare (not safe))
                               (cons '() __tmp185804))))
                        (declare (not safe))
                        (cons __tmp185805 __tmp185803))))
                 (declare (not safe))
                 (cons __tmp185802 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp185806
                                                        __tmp185801))))
                                           (declare (not safe))
                                           (cons __tmp185807 __tmp185800)))
                                       _hd181278181306_)
                                      (_g181271181285_ _g181272181289_))))
                              (_g181271181285_ _g181272181289_))))
                      (_g181271181285_ _g181272181289_)))))
          (_g181270181326_ _$stx181267_))))))
