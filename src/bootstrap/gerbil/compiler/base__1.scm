(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g194880_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194882_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194884_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194889_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194892_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194897_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194900_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194905_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194908_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194913_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g194916_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx189670_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx189670_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx189673_)
        (let* ((_g189676189700_
                (lambda (_g189677189696_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g189677189696_))))
               (_g189675190003_
                (lambda (_g189677189704_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g189677189704_))
                      (let ((_e189682189707_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g189677189704_))))
                        (let ((_hd189681189711_
                               (let ()
                                 (declare (not safe))
                                 (##car _e189682189707_)))
                              (_tl189680189714_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e189682189707_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl189680189714_))
                              (let ((_e189685189717_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl189680189714_))))
                                (let ((_hd189684189721_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e189685189717_)))
                                      (_tl189683189724_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e189685189717_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl189683189724_))
                                      (let ((_g194851_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl189683189724_
                                                '0))))
                                        (begin
                                          (let ((_g194852_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g194851_)
                                                       (##vector-length
                                                        _g194851_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g194852_ 2)))
                                                (error "Context expects 2 values"
                                                       _g194852_)))
                                          (let ((_target189686189727_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g194851_ 0)))
                                                (_tl189688189730_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g194851_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl189688189730_))
                                                (letrec ((_loop189689189733_
                                                          (lambda (_hd189687189737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause189693189740_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd189687189737_))
                        (let ((_e189690189743_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd189687189737_))))
                          (let ((_lp-hd189691189747_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e189690189743_)))
                                (_lp-tl189692189750_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e189690189743_))))
                            (_loop189689189733_
                             _lp-tl189692189750_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd189691189747_
                                     _clause189693189740_)))))
                        (let ((_clause189694189753_
                               (reverse _clause189693189740_)))
                          ((lambda (_L189757_ _L189759_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L189759_))
                                 (let* ((_g189778189795_
                                         (lambda (_g189779189791_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g189779189791_))))
                                        (_g189777189856_
                                         (lambda (_g189779189799_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g189779189799_))
                                               (let ((_g194853_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g189779189799_
                                                         '0))))
                                                 (begin
                                                   (let ((_g194854_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g194853_)
                        (##vector-length _g194853_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g194854_ 2)))
                 (error "Context expects 2 values" _g194854_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target189781189802_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g194853_
                                                             0)))
                                                         (_tl189783189805_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g194853_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl189783189805_))
                                                         (letrec ((_loop189784189808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd189782189812_ _clause189788189815_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd189782189812_))
                                 (let ((_e189785189818_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd189782189812_))))
                                   (let ((_lp-hd189786189822_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e189785189818_)))
                                         (_lp-tl189787189825_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e189785189818_))))
                                     (_loop189784189808_
                                      _lp-tl189787189825_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd189786189822_
                                              _clause189788189815_)))))
                                 (let ((_clause189789189828_
                                        (reverse _clause189788189815_)))
                                   ((lambda (_L189832_)
                                      (let ()
                                        (let ((__tmp194866
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp194855
                                               (let ((__tmp194864
                                                      (let ((__tmp194865
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp194865 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp194856
                                                      (let ((__tmp194857
                                                             (let ((__tmp194863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp194858
                            (let ((__tmp194862
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp194859
                                   (let ((__tmp194860
                                          (let ((__tmp194861
                                                 (lambda (_g189847189850_
                                                          _g189848189853_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g189847189850_
                                                           _g189848189853_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp194861
                                                    '()
                                                    _L189832_))))
                                     (declare (not safe))
                                     (cons _L189759_ __tmp194860))))
                              (declare (not safe))
                              (cons __tmp194862 __tmp194859))))
                       (declare (not safe))
                       (cons __tmp194863 __tmp194858))))
                (declare (not safe))
                (cons __tmp194857 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp194864
                                                       __tmp194856))))
                                          (declare (not safe))
                                          (cons __tmp194866 __tmp194855))))
                                    _clause189789189828_))))))
                   (_loop189784189808_ _target189781189802_ '()))
                 (_g189778189795_ _g189779189799_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g189778189795_
                                                _g189779189799_)))))
                                   (_g189777189856_
                                    (let ((__tmp194869
                                           (lambda (_clause189860_)
                                             (let* ((___stx194797194798_
                                                     _clause189860_)
                                                    (_g189864189891_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx194797194798_)))))
                                               (let ((___kont194800194801_
                                                      (lambda (_L189976_
                                                               _L189978_)
                                                        (let ((__tmp194870
                                                               (let ((__tmp194871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp194873
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp194872
                                     (let ()
                                       (declare (not safe))
                                       (cons _L189976_ '()))))
                                (declare (not safe))
                                (cons __tmp194873 __tmp194872))))
                         (declare (not safe))
                         (cons __tmp194871 '()))))
                  (declare (not safe))
                  (cons _L189978_ __tmp194870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont194802194803_
                                                      (lambda (_L189928_
                                                               _L189930_
                                                               _L189931_)
                                                        (let ((__tmp194874
                                                               (let ((__tmp194875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp194876
                                     (let ((__tmp194878
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp194877
                                            (let ()
                                              (declare (not safe))
                                              (cons _L189928_ '()))))
                                       (declare (not safe))
                                       (cons __tmp194878 __tmp194877))))
                                (declare (not safe))
                                (cons __tmp194876 '()))))
                         (declare (not safe))
                         (cons _L189930_ __tmp194875))))
                  (declare (not safe))
                  (cons _L189931_ __tmp194874)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx194797194798_))
                                                     (let ((_e189870189956_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx194797194798_))))
                                                       (let ((_tl189868189963_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e189870189956_)))
                     (_hd189869189960_
                      (let () (declare (not safe)) (##car _e189870189956_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl189868189963_))
                     (let ((_e189873189966_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl189868189963_))))
                       (let ((_tl189871189973_
                              (let ()
                                (declare (not safe))
                                (##cdr _e189873189966_)))
                             (_hd189872189970_
                              (let ()
                                (declare (not safe))
                                (##car _e189873189966_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl189871189973_))
                             (___kont194800194801_
                              _hd189872189970_
                              _hd189869189960_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl189871189973_))
                                 (let ((_e189885189918_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl189871189973_))))
                                   (let ((_tl189883189925_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e189885189918_)))
                                         (_hd189884189922_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e189885189918_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl189883189925_))
                                         (___kont194802194803_
                                          _hd189884189922_
                                          _hd189872189970_
                                          _hd189869189960_)
                                         (let ()
                                           (declare (not safe))
                                           (_g189864189891_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g189864189891_))))))
                     (let () (declare (not safe)) (_g189864189891_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g189864189891_)))))))
                                          (__tmp194867
                                           (let ((__tmp194868
                                                  (lambda (_g189994189997_
                                                           _g189995190000_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g189994189997_
                                                            _g189995190000_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp194868
                                                     '()
                                                     _L189757_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp194869 __tmp194867))))
                                 (_g189676189700_ _g189677189704_)))
                           _clause189694189753_
                           _hd189684189721_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop189689189733_
                                                   _target189686189727_
                                                   '()))
                                                (_g189676189700_
                                                 _g189677189704_)))))
                                      (_g189676189700_ _g189677189704_))))
                              (_g189676189700_ _g189677189704_))))
                      (_g189676189700_ _g189677189704_)))))
          (_g189675190003_ _stx189673_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj194840
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
           __obj194840
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194840
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194840
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194840
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194840
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194840
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194840
           ':init!
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194879 |gxc[1]#_g194880_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194840
           __tmp194879
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194881 |gxc[1]#_g194882_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194840
           __tmp194881
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194883 |gxc[1]#_g194884_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194840
           __tmp194883
           '10
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
           __obj194840
           __tmp194885
           '11
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
           __obj194840
           __tmp194893
           '12
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
           __obj194840
           __tmp194901
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp194909
               (let ((__tmp194914
                      (let ((__tmp194915 |gxc[1]#_g194916_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp194915)))
                     (__tmp194910
                      (let ((__tmp194911
                             (let ((__tmp194912 |gxc[1]#_g194913_|))
                               (declare (not safe))
                               (cons 'bindings __tmp194912))))
                        (declare (not safe))
                        (cons __tmp194911 '()))))
                 (declare (not safe))
                 (cons __tmp194914 __tmp194910))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj194840
           __tmp194909
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj194840))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx190009_)
        (let* ((_g190013190027_
                (lambda (_g190014190023_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g190014190023_))))
               (_g190012190068_
                (lambda (_g190014190031_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g190014190031_))
                      (let ((_e190018190034_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g190014190031_))))
                        (let ((_hd190017190038_
                               (let ()
                                 (declare (not safe))
                                 (##car _e190018190034_)))
                              (_tl190016190041_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e190018190034_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl190016190041_))
                              (let ((_e190021190044_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl190016190041_))))
                                (let ((_hd190020190048_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e190021190044_)))
                                      (_tl190019190051_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e190021190044_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl190019190051_))
                                      ((lambda (_L190054_)
                                         (let ((__tmp194924
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp194917
                                                (let ((__tmp194923
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp194918
                                                       (let ((__tmp194919
                                                              (let ((__tmp194922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp194920
                             (let ((__tmp194921
                                    (let ()
                                      (declare (not safe))
                                      (cons _L190054_ '()))))
                               (declare (not safe))
                               (cons '() __tmp194921))))
                        (declare (not safe))
                        (cons __tmp194922 __tmp194920))))
                 (declare (not safe))
                 (cons __tmp194919 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp194923
                                                        __tmp194918))))
                                           (declare (not safe))
                                           (cons __tmp194924 __tmp194917)))
                                       _hd190020190048_)
                                      (_g190013190027_ _g190014190031_))))
                              (_g190013190027_ _g190014190031_))))
                      (_g190013190027_ _g190014190031_)))))
          (_g190012190068_ _$stx190009_))))))
