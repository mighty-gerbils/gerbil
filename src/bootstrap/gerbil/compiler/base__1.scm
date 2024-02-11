(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g194872_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194874_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194876_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194881_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194884_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194889_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194892_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194897_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194900_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194905_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194908_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx189662_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx189662_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx189665_)
        (let* ((_g189668189692_
                (lambda (_g189669189688_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g189669189688_))))
               (_g189667189995_
                (lambda (_g189669189696_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g189669189696_))
                      (let ((_e189674189699_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g189669189696_))))
                        (let ((_hd189673189703_
                               (let ()
                                 (declare (not safe))
                                 (##car _e189674189699_)))
                              (_tl189672189706_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e189674189699_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl189672189706_))
                              (let ((_e189677189709_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl189672189706_))))
                                (let ((_hd189676189713_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e189677189709_)))
                                      (_tl189675189716_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e189677189709_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl189675189716_))
                                      (let ((_g194843_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl189675189716_
                                                '0))))
                                        (begin
                                          (let ((_g194844_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g194843_)
                                                       (##vector-length
                                                        _g194843_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g194844_ 2)))
                                                (error "Context expects 2 values"
                                                       _g194844_)))
                                          (let ((_target189678189719_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g194843_ 0)))
                                                (_tl189680189722_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g194843_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl189680189722_))
                                                (letrec ((_loop189681189725_
                                                          (lambda (_hd189679189729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause189685189732_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd189679189729_))
                        (let ((_e189682189735_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd189679189729_))))
                          (let ((_lp-hd189683189739_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e189682189735_)))
                                (_lp-tl189684189742_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e189682189735_))))
                            (_loop189681189725_
                             _lp-tl189684189742_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd189683189739_
                                     _clause189685189732_)))))
                        (let ((_clause189686189745_
                               (reverse _clause189685189732_)))
                          ((lambda (_L189749_ _L189751_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L189751_))
                                 (let* ((_g189770189787_
                                         (lambda (_g189771189783_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g189771189783_))))
                                        (_g189769189848_
                                         (lambda (_g189771189791_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g189771189791_))
                                               (let ((_g194845_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g189771189791_
                                                         '0))))
                                                 (begin
                                                   (let ((_g194846_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g194845_)
                        (##vector-length _g194845_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g194846_ 2)))
                 (error "Context expects 2 values" _g194846_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target189773189794_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g194845_
                                                             0)))
                                                         (_tl189775189797_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g194845_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl189775189797_))
                                                         (letrec ((_loop189776189800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd189774189804_ _clause189780189807_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd189774189804_))
                                 (let ((_e189777189810_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd189774189804_))))
                                   (let ((_lp-hd189778189814_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e189777189810_)))
                                         (_lp-tl189779189817_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e189777189810_))))
                                     (_loop189776189800_
                                      _lp-tl189779189817_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd189778189814_
                                              _clause189780189807_)))))
                                 (let ((_clause189781189820_
                                        (reverse _clause189780189807_)))
                                   ((lambda (_L189824_)
                                      (let ()
                                        (let ((__tmp194858
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp194847
                                               (let ((__tmp194856
                                                      (let ((__tmp194857
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp194857 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp194848
                                                      (let ((__tmp194849
                                                             (let ((__tmp194855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp194850
                            (let ((__tmp194854
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp194851
                                   (let ((__tmp194852
                                          (let ((__tmp194853
                                                 (lambda (_g189839189842_
                                                          _g189840189845_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g189839189842_
                                                           _g189840189845_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp194853
                                                    '()
                                                    _L189824_))))
                                     (declare (not safe))
                                     (cons _L189751_ __tmp194852))))
                              (declare (not safe))
                              (cons __tmp194854 __tmp194851))))
                       (declare (not safe))
                       (cons __tmp194855 __tmp194850))))
                (declare (not safe))
                (cons __tmp194849 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp194856
                                                       __tmp194848))))
                                          (declare (not safe))
                                          (cons __tmp194858 __tmp194847))))
                                    _clause189781189820_))))))
                   (_loop189776189800_ _target189773189794_ '()))
                 (_g189770189787_ _g189771189791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g189770189787_
                                                _g189771189791_)))))
                                   (_g189769189848_
                                    (let ((__tmp194861
                                           (lambda (_clause189852_)
                                             (let* ((___stx194789194790_
                                                     _clause189852_)
                                                    (_g189856189883_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx194789194790_)))))
                                               (let ((___kont194792194793_
                                                      (lambda (_L189968_
                                                               _L189970_)
                                                        (let ((__tmp194862
                                                               (let ((__tmp194863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp194865
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp194864
                                     (let ()
                                       (declare (not safe))
                                       (cons _L189968_ '()))))
                                (declare (not safe))
                                (cons __tmp194865 __tmp194864))))
                         (declare (not safe))
                         (cons __tmp194863 '()))))
                  (declare (not safe))
                  (cons _L189970_ __tmp194862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont194794194795_
                                                      (lambda (_L189920_
                                                               _L189922_
                                                               _L189923_)
                                                        (let ((__tmp194866
                                                               (let ((__tmp194867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp194868
                                     (let ((__tmp194870
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp194869
                                            (let ()
                                              (declare (not safe))
                                              (cons _L189920_ '()))))
                                       (declare (not safe))
                                       (cons __tmp194870 __tmp194869))))
                                (declare (not safe))
                                (cons __tmp194868 '()))))
                         (declare (not safe))
                         (cons _L189922_ __tmp194867))))
                  (declare (not safe))
                  (cons _L189923_ __tmp194866)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx194789194790_))
                                                     (let ((_e189862189948_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx194789194790_))))
                                                       (let ((_tl189860189955_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e189862189948_)))
                     (_hd189861189952_
                      (let () (declare (not safe)) (##car _e189862189948_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl189860189955_))
                     (let ((_e189865189958_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl189860189955_))))
                       (let ((_tl189863189965_
                              (let ()
                                (declare (not safe))
                                (##cdr _e189865189958_)))
                             (_hd189864189962_
                              (let ()
                                (declare (not safe))
                                (##car _e189865189958_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl189863189965_))
                             (___kont194792194793_
                              _hd189864189962_
                              _hd189861189952_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl189863189965_))
                                 (let ((_e189877189910_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl189863189965_))))
                                   (let ((_tl189875189917_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e189877189910_)))
                                         (_hd189876189914_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e189877189910_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl189875189917_))
                                         (___kont194794194795_
                                          _hd189876189914_
                                          _hd189864189962_
                                          _hd189861189952_)
                                         (let ()
                                           (declare (not safe))
                                           (_g189856189883_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g189856189883_))))))
                     (let () (declare (not safe)) (_g189856189883_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g189856189883_)))))))
                                          (__tmp194859
                                           (let ((__tmp194860
                                                  (lambda (_g189986189989_
                                                           _g189987189992_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g189986189989_
                                                            _g189987189992_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp194860
                                                     '()
                                                     _L189749_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp194861 __tmp194859))))
                                 (_g189668189692_ _g189669189696_)))
                           _clause189686189745_
                           _hd189676189713_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop189681189725_
                                                   _target189678189719_
                                                   '()))
                                                (_g189668189692_
                                                 _g189669189696_)))))
                                      (_g189668189692_ _g189669189696_))))
                              (_g189668189692_ _g189669189696_))))
                      (_g189668189692_ _g189669189696_)))))
          (_g189667189995_ _stx189665_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj194832
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194832
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194832
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194832
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194832
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194832
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194832
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194832
           ':init!
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194871 |gxc[1]#_g194872_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194832
           __tmp194871
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194873 |gxc[1]#_g194874_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194832
           __tmp194873
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194875 |gxc[1]#_g194876_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194832
           __tmp194875
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194877
               (let ((__tmp194882
                      (let ((__tmp194883 |gxc[1]#_g194884_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp194883)))
                     (__tmp194878
                      (let ((__tmp194879
                             (let ((__tmp194880 |gxc[1]#_g194881_|))
                               (declare (not safe))
                               (cons 'bindings __tmp194880))))
                        (declare (not safe))
                        (cons __tmp194879 '()))))
                 (declare (not safe))
                 (cons __tmp194882 __tmp194878))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194832
           __tmp194877
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194885
               (let ((__tmp194890
                      (let ((__tmp194891 |gxc[1]#_g194892_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp194891)))
                     (__tmp194886
                      (let ((__tmp194887
                             (let ((__tmp194888 |gxc[1]#_g194889_|))
                               (declare (not safe))
                               (cons 'bindings __tmp194888))))
                        (declare (not safe))
                        (cons __tmp194887 '()))))
                 (declare (not safe))
                 (cons __tmp194890 __tmp194886))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194832
           __tmp194885
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194893
               (let ((__tmp194898
                      (let ((__tmp194899 |gxc[1]#_g194900_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp194899)))
                     (__tmp194894
                      (let ((__tmp194895
                             (let ((__tmp194896 |gxc[1]#_g194897_|))
                               (declare (not safe))
                               (cons 'bindings __tmp194896))))
                        (declare (not safe))
                        (cons __tmp194895 '()))))
                 (declare (not safe))
                 (cons __tmp194898 __tmp194894))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194832
           __tmp194893
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194901
               (let ((__tmp194906
                      (let ((__tmp194907 |gxc[1]#_g194908_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp194907)))
                     (__tmp194902
                      (let ((__tmp194903
                             (let ((__tmp194904 |gxc[1]#_g194905_|))
                               (declare (not safe))
                               (cons 'bindings __tmp194904))))
                        (declare (not safe))
                        (cons __tmp194903 '()))))
                 (declare (not safe))
                 (cons __tmp194906 __tmp194902))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194832
           __tmp194901
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj194832))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx190001_)
        (let* ((_g190005190019_
                (lambda (_g190006190015_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g190006190015_))))
               (_g190004190060_
                (lambda (_g190006190023_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g190006190023_))
                      (let ((_e190010190026_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g190006190023_))))
                        (let ((_hd190009190030_
                               (let ()
                                 (declare (not safe))
                                 (##car _e190010190026_)))
                              (_tl190008190033_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e190010190026_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl190008190033_))
                              (let ((_e190013190036_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl190008190033_))))
                                (let ((_hd190012190040_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e190013190036_)))
                                      (_tl190011190043_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e190013190036_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl190011190043_))
                                      ((lambda (_L190046_)
                                         (let ((__tmp194916
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp194909
                                                (let ((__tmp194915
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp194910
                                                       (let ((__tmp194911
                                                              (let ((__tmp194914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp194912
                             (let ((__tmp194913
                                    (let ()
                                      (declare (not safe))
                                      (cons _L190046_ '()))))
                               (declare (not safe))
                               (cons '() __tmp194913))))
                        (declare (not safe))
                        (cons __tmp194914 __tmp194912))))
                 (declare (not safe))
                 (cons __tmp194911 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp194915
                                                        __tmp194910))))
                                           (declare (not safe))
                                           (cons __tmp194916 __tmp194909)))
                                       _hd190012190040_)
                                      (_g190005190019_ _g190006190023_))))
                              (_g190005190019_ _g190006190023_))))
                      (_g190005190019_ _g190006190023_)))))
          (_g190004190060_ _$stx190001_))))))
