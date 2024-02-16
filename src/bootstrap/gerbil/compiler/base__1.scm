(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g196266_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196268_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196270_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196275_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196278_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196283_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196286_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196291_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196294_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196299_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196302_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx191056_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx191056_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx191059_)
        (let* ((_g191062191086_
                (lambda (_g191063191082_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g191063191082_))))
               (_g191061191389_
                (lambda (_g191063191090_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g191063191090_))
                      (let ((_e191068191093_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g191063191090_))))
                        (let ((_hd191067191097_
                               (let ()
                                 (declare (not safe))
                                 (##car _e191068191093_)))
                              (_tl191066191100_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e191068191093_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl191066191100_))
                              (let ((_e191071191103_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl191066191100_))))
                                (let ((_hd191070191107_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e191071191103_)))
                                      (_tl191069191110_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e191071191103_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl191069191110_))
                                      (let ((_g196237_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl191069191110_
                                                '0))))
                                        (begin
                                          (let ((_g196238_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g196237_)
                                                       (##vector-length
                                                        _g196237_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g196238_ 2)))
                                                (error "Context expects 2 values"
                                                       _g196238_)))
                                          (let ((_target191072191113_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g196237_ 0)))
                                                (_tl191074191116_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g196237_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl191074191116_))
                                                (letrec ((_loop191075191119_
                                                          (lambda (_hd191073191123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause191079191126_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd191073191123_))
                        (let ((_e191076191129_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd191073191123_))))
                          (let ((_lp-hd191077191133_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e191076191129_)))
                                (_lp-tl191078191136_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e191076191129_))))
                            (_loop191075191119_
                             _lp-tl191078191136_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd191077191133_
                                     _clause191079191126_)))))
                        (let ((_clause191080191139_
                               (reverse _clause191079191126_)))
                          ((lambda (_L191143_ _L191145_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L191145_))
                                 (let* ((_g191164191181_
                                         (lambda (_g191165191177_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g191165191177_))))
                                        (_g191163191242_
                                         (lambda (_g191165191185_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g191165191185_))
                                               (let ((_g196239_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g191165191185_
                                                         '0))))
                                                 (begin
                                                   (let ((_g196240_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g196239_)
                        (##vector-length _g196239_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g196240_ 2)))
                 (error "Context expects 2 values" _g196240_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target191167191188_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g196239_
                                                             0)))
                                                         (_tl191169191191_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g196239_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl191169191191_))
                                                         (letrec ((_loop191170191194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd191168191198_ _clause191174191201_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd191168191198_))
                                 (let ((_e191171191204_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd191168191198_))))
                                   (let ((_lp-hd191172191208_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e191171191204_)))
                                         (_lp-tl191173191211_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e191171191204_))))
                                     (_loop191170191194_
                                      _lp-tl191173191211_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd191172191208_
                                              _clause191174191201_)))))
                                 (let ((_clause191175191214_
                                        (reverse _clause191174191201_)))
                                   ((lambda (_L191218_)
                                      (let ()
                                        (let ((__tmp196252
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp196241
                                               (let ((__tmp196250
                                                      (let ((__tmp196251
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp196251 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp196242
                                                      (let ((__tmp196243
                                                             (let ((__tmp196249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp196244
                            (let ((__tmp196248
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp196245
                                   (let ((__tmp196246
                                          (let ((__tmp196247
                                                 (lambda (_g191233191236_
                                                          _g191234191239_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g191233191236_
                                                           _g191234191239_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp196247
                                                    '()
                                                    _L191218_))))
                                     (declare (not safe))
                                     (cons _L191145_ __tmp196246))))
                              (declare (not safe))
                              (cons __tmp196248 __tmp196245))))
                       (declare (not safe))
                       (cons __tmp196249 __tmp196244))))
                (declare (not safe))
                (cons __tmp196243 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp196250
                                                       __tmp196242))))
                                          (declare (not safe))
                                          (cons __tmp196252 __tmp196241))))
                                    _clause191175191214_))))))
                   (_loop191170191194_ _target191167191188_ '()))
                 (_g191164191181_ _g191165191185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g191164191181_
                                                _g191165191185_)))))
                                   (_g191163191242_
                                    (let ((__tmp196255
                                           (lambda (_clause191246_)
                                             (let* ((___stx196183196184_
                                                     _clause191246_)
                                                    (_g191250191277_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx196183196184_)))))
                                               (let ((___kont196186196187_
                                                      (lambda (_L191362_
                                                               _L191364_)
                                                        (let ((__tmp196256
                                                               (let ((__tmp196257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp196259
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp196258
                                     (let ()
                                       (declare (not safe))
                                       (cons _L191362_ '()))))
                                (declare (not safe))
                                (cons __tmp196259 __tmp196258))))
                         (declare (not safe))
                         (cons __tmp196257 '()))))
                  (declare (not safe))
                  (cons _L191364_ __tmp196256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont196188196189_
                                                      (lambda (_L191314_
                                                               _L191316_
                                                               _L191317_)
                                                        (let ((__tmp196260
                                                               (let ((__tmp196261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp196262
                                     (let ((__tmp196264
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp196263
                                            (let ()
                                              (declare (not safe))
                                              (cons _L191314_ '()))))
                                       (declare (not safe))
                                       (cons __tmp196264 __tmp196263))))
                                (declare (not safe))
                                (cons __tmp196262 '()))))
                         (declare (not safe))
                         (cons _L191316_ __tmp196261))))
                  (declare (not safe))
                  (cons _L191317_ __tmp196260)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx196183196184_))
                                                     (let ((_e191256191342_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx196183196184_))))
                                                       (let ((_tl191254191349_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e191256191342_)))
                     (_hd191255191346_
                      (let () (declare (not safe)) (##car _e191256191342_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl191254191349_))
                     (let ((_e191259191352_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl191254191349_))))
                       (let ((_tl191257191359_
                              (let ()
                                (declare (not safe))
                                (##cdr _e191259191352_)))
                             (_hd191258191356_
                              (let ()
                                (declare (not safe))
                                (##car _e191259191352_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl191257191359_))
                             (___kont196186196187_
                              _hd191258191356_
                              _hd191255191346_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl191257191359_))
                                 (let ((_e191271191304_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl191257191359_))))
                                   (let ((_tl191269191311_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e191271191304_)))
                                         (_hd191270191308_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e191271191304_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl191269191311_))
                                         (___kont196188196189_
                                          _hd191270191308_
                                          _hd191258191356_
                                          _hd191255191346_)
                                         (let ()
                                           (declare (not safe))
                                           (_g191250191277_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g191250191277_))))))
                     (let () (declare (not safe)) (_g191250191277_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g191250191277_)))))))
                                          (__tmp196253
                                           (let ((__tmp196254
                                                  (lambda (_g191380191383_
                                                           _g191381191386_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g191380191383_
                                                            _g191381191386_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp196254
                                                     '()
                                                     _L191143_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp196255 __tmp196253))))
                                 (_g191062191086_ _g191063191090_)))
                           _clause191080191139_
                           _hd191070191107_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop191075191119_
                                                   _target191072191113_
                                                   '()))
                                                (_g191062191086_
                                                 _g191063191090_)))))
                                      (_g191062191086_ _g191063191090_))))
                              (_g191062191086_ _g191063191090_))))
                      (_g191062191086_ _g191063191090_)))))
          (_g191061191389_ _stx191059_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj196226
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196226
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196226
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196226
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196226
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196226
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196226
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196226
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196226
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196265 |gxc[1]#_g196266_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196226
           __tmp196265
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196267 |gxc[1]#_g196268_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196226
           __tmp196267
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196269 |gxc[1]#_g196270_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196226
           __tmp196269
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196271
               (let ((__tmp196276
                      (let ((__tmp196277 |gxc[1]#_g196278_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196277)))
                     (__tmp196272
                      (let ((__tmp196273
                             (let ((__tmp196274 |gxc[1]#_g196275_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196274))))
                        (declare (not safe))
                        (cons __tmp196273 '()))))
                 (declare (not safe))
                 (cons __tmp196276 __tmp196272))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196226
           __tmp196271
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196279
               (let ((__tmp196284
                      (let ((__tmp196285 |gxc[1]#_g196286_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196285)))
                     (__tmp196280
                      (let ((__tmp196281
                             (let ((__tmp196282 |gxc[1]#_g196283_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196282))))
                        (declare (not safe))
                        (cons __tmp196281 '()))))
                 (declare (not safe))
                 (cons __tmp196284 __tmp196280))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196226
           __tmp196279
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196287
               (let ((__tmp196292
                      (let ((__tmp196293 |gxc[1]#_g196294_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196293)))
                     (__tmp196288
                      (let ((__tmp196289
                             (let ((__tmp196290 |gxc[1]#_g196291_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196290))))
                        (declare (not safe))
                        (cons __tmp196289 '()))))
                 (declare (not safe))
                 (cons __tmp196292 __tmp196288))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196226
           __tmp196287
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196295
               (let ((__tmp196300
                      (let ((__tmp196301 |gxc[1]#_g196302_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196301)))
                     (__tmp196296
                      (let ((__tmp196297
                             (let ((__tmp196298 |gxc[1]#_g196299_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196298))))
                        (declare (not safe))
                        (cons __tmp196297 '()))))
                 (declare (not safe))
                 (cons __tmp196300 __tmp196296))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196226
           __tmp196295
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj196226))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx191395_)
        (let* ((_g191399191413_
                (lambda (_g191400191409_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g191400191409_))))
               (_g191398191454_
                (lambda (_g191400191417_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g191400191417_))
                      (let ((_e191404191420_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g191400191417_))))
                        (let ((_hd191403191424_
                               (let ()
                                 (declare (not safe))
                                 (##car _e191404191420_)))
                              (_tl191402191427_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e191404191420_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl191402191427_))
                              (let ((_e191407191430_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl191402191427_))))
                                (let ((_hd191406191434_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e191407191430_)))
                                      (_tl191405191437_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e191407191430_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl191405191437_))
                                      ((lambda (_L191440_)
                                         (let ((__tmp196310
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp196303
                                                (let ((__tmp196309
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp196304
                                                       (let ((__tmp196305
                                                              (let ((__tmp196308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp196306
                             (let ((__tmp196307
                                    (let ()
                                      (declare (not safe))
                                      (cons _L191440_ '()))))
                               (declare (not safe))
                               (cons '() __tmp196307))))
                        (declare (not safe))
                        (cons __tmp196308 __tmp196306))))
                 (declare (not safe))
                 (cons __tmp196305 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp196309
                                                        __tmp196304))))
                                           (declare (not safe))
                                           (cons __tmp196310 __tmp196303)))
                                       _hd191406191434_)
                                      (_g191399191413_ _g191400191417_))))
                              (_g191399191413_ _g191400191417_))))
                      (_g191399191413_ _g191400191417_)))))
          (_g191398191454_ _$stx191395_))))))
