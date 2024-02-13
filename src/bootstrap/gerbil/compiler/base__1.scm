(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g196265_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196267_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196269_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196274_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196277_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196282_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196285_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196290_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196293_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196298_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g196301_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx191055_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx191055_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx191058_)
        (let* ((_g191061191085_
                (lambda (_g191062191081_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g191062191081_))))
               (_g191060191388_
                (lambda (_g191062191089_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g191062191089_))
                      (let ((_e191067191092_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g191062191089_))))
                        (let ((_hd191066191096_
                               (let ()
                                 (declare (not safe))
                                 (##car _e191067191092_)))
                              (_tl191065191099_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e191067191092_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl191065191099_))
                              (let ((_e191070191102_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl191065191099_))))
                                (let ((_hd191069191106_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e191070191102_)))
                                      (_tl191068191109_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e191070191102_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl191068191109_))
                                      (let ((_g196236_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl191068191109_
                                                '0))))
                                        (begin
                                          (let ((_g196237_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g196236_)
                                                       (##vector-length
                                                        _g196236_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g196237_ 2)))
                                                (error "Context expects 2 values"
                                                       _g196237_)))
                                          (let ((_target191071191112_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g196236_ 0)))
                                                (_tl191073191115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g196236_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl191073191115_))
                                                (letrec ((_loop191074191118_
                                                          (lambda (_hd191072191122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause191078191125_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd191072191122_))
                        (let ((_e191075191128_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd191072191122_))))
                          (let ((_lp-hd191076191132_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e191075191128_)))
                                (_lp-tl191077191135_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e191075191128_))))
                            (_loop191074191118_
                             _lp-tl191077191135_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd191076191132_
                                     _clause191078191125_)))))
                        (let ((_clause191079191138_
                               (reverse _clause191078191125_)))
                          ((lambda (_L191142_ _L191144_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L191144_))
                                 (let* ((_g191163191180_
                                         (lambda (_g191164191176_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g191164191176_))))
                                        (_g191162191241_
                                         (lambda (_g191164191184_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g191164191184_))
                                               (let ((_g196238_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g191164191184_
                                                         '0))))
                                                 (begin
                                                   (let ((_g196239_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g196238_)
                        (##vector-length _g196238_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g196239_ 2)))
                 (error "Context expects 2 values" _g196239_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target191166191187_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g196238_
                                                             0)))
                                                         (_tl191168191190_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g196238_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl191168191190_))
                                                         (letrec ((_loop191169191193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd191167191197_ _clause191173191200_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd191167191197_))
                                 (let ((_e191170191203_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd191167191197_))))
                                   (let ((_lp-hd191171191207_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e191170191203_)))
                                         (_lp-tl191172191210_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e191170191203_))))
                                     (_loop191169191193_
                                      _lp-tl191172191210_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd191171191207_
                                              _clause191173191200_)))))
                                 (let ((_clause191174191213_
                                        (reverse _clause191173191200_)))
                                   ((lambda (_L191217_)
                                      (let ()
                                        (let ((__tmp196251
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp196240
                                               (let ((__tmp196249
                                                      (let ((__tmp196250
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp196250 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp196241
                                                      (let ((__tmp196242
                                                             (let ((__tmp196248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp196243
                            (let ((__tmp196247
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp196244
                                   (let ((__tmp196245
                                          (let ((__tmp196246
                                                 (lambda (_g191232191235_
                                                          _g191233191238_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g191232191235_
                                                           _g191233191238_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp196246
                                                    '()
                                                    _L191217_))))
                                     (declare (not safe))
                                     (cons _L191144_ __tmp196245))))
                              (declare (not safe))
                              (cons __tmp196247 __tmp196244))))
                       (declare (not safe))
                       (cons __tmp196248 __tmp196243))))
                (declare (not safe))
                (cons __tmp196242 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp196249
                                                       __tmp196241))))
                                          (declare (not safe))
                                          (cons __tmp196251 __tmp196240))))
                                    _clause191174191213_))))))
                   (_loop191169191193_ _target191166191187_ '()))
                 (_g191163191180_ _g191164191184_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g191163191180_
                                                _g191164191184_)))))
                                   (_g191162191241_
                                    (let ((__tmp196254
                                           (lambda (_clause191245_)
                                             (let* ((___stx196182196183_
                                                     _clause191245_)
                                                    (_g191249191276_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx196182196183_)))))
                                               (let ((___kont196185196186_
                                                      (lambda (_L191361_
                                                               _L191363_)
                                                        (let ((__tmp196255
                                                               (let ((__tmp196256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp196258
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp196257
                                     (let ()
                                       (declare (not safe))
                                       (cons _L191361_ '()))))
                                (declare (not safe))
                                (cons __tmp196258 __tmp196257))))
                         (declare (not safe))
                         (cons __tmp196256 '()))))
                  (declare (not safe))
                  (cons _L191363_ __tmp196255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont196187196188_
                                                      (lambda (_L191313_
                                                               _L191315_
                                                               _L191316_)
                                                        (let ((__tmp196259
                                                               (let ((__tmp196260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp196261
                                     (let ((__tmp196263
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp196262
                                            (let ()
                                              (declare (not safe))
                                              (cons _L191313_ '()))))
                                       (declare (not safe))
                                       (cons __tmp196263 __tmp196262))))
                                (declare (not safe))
                                (cons __tmp196261 '()))))
                         (declare (not safe))
                         (cons _L191315_ __tmp196260))))
                  (declare (not safe))
                  (cons _L191316_ __tmp196259)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx196182196183_))
                                                     (let ((_e191255191341_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx196182196183_))))
                                                       (let ((_tl191253191348_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e191255191341_)))
                     (_hd191254191345_
                      (let () (declare (not safe)) (##car _e191255191341_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl191253191348_))
                     (let ((_e191258191351_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl191253191348_))))
                       (let ((_tl191256191358_
                              (let ()
                                (declare (not safe))
                                (##cdr _e191258191351_)))
                             (_hd191257191355_
                              (let ()
                                (declare (not safe))
                                (##car _e191258191351_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl191256191358_))
                             (___kont196185196186_
                              _hd191257191355_
                              _hd191254191345_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl191256191358_))
                                 (let ((_e191270191303_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl191256191358_))))
                                   (let ((_tl191268191310_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e191270191303_)))
                                         (_hd191269191307_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e191270191303_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl191268191310_))
                                         (___kont196187196188_
                                          _hd191269191307_
                                          _hd191257191355_
                                          _hd191254191345_)
                                         (let ()
                                           (declare (not safe))
                                           (_g191249191276_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g191249191276_))))))
                     (let () (declare (not safe)) (_g191249191276_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g191249191276_)))))))
                                          (__tmp196252
                                           (let ((__tmp196253
                                                  (lambda (_g191379191382_
                                                           _g191380191385_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g191379191382_
                                                            _g191380191385_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp196253
                                                     '()
                                                     _L191142_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp196254 __tmp196252))))
                                 (_g191061191085_ _g191062191089_)))
                           _clause191079191138_
                           _hd191069191106_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop191074191118_
                                                   _target191071191112_
                                                   '()))
                                                (_g191061191085_
                                                 _g191062191089_)))))
                                      (_g191061191085_ _g191062191089_))))
                              (_g191061191085_ _g191062191089_))))
                      (_g191061191085_ _g191062191089_)))))
          (_g191060191388_ _stx191058_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj196225
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
           __obj196225
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196225
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196225
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196225
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196225
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196225
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196225
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196225
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196264 |gxc[1]#_g196265_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196225
           __tmp196264
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196266 |gxc[1]#_g196267_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196225
           __tmp196266
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196268 |gxc[1]#_g196269_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196225
           __tmp196268
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196270
               (let ((__tmp196275
                      (let ((__tmp196276 |gxc[1]#_g196277_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196276)))
                     (__tmp196271
                      (let ((__tmp196272
                             (let ((__tmp196273 |gxc[1]#_g196274_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196273))))
                        (declare (not safe))
                        (cons __tmp196272 '()))))
                 (declare (not safe))
                 (cons __tmp196275 __tmp196271))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196225
           __tmp196270
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196278
               (let ((__tmp196283
                      (let ((__tmp196284 |gxc[1]#_g196285_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196284)))
                     (__tmp196279
                      (let ((__tmp196280
                             (let ((__tmp196281 |gxc[1]#_g196282_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196281))))
                        (declare (not safe))
                        (cons __tmp196280 '()))))
                 (declare (not safe))
                 (cons __tmp196283 __tmp196279))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196225
           __tmp196278
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196286
               (let ((__tmp196291
                      (let ((__tmp196292 |gxc[1]#_g196293_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196292)))
                     (__tmp196287
                      (let ((__tmp196288
                             (let ((__tmp196289 |gxc[1]#_g196290_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196289))))
                        (declare (not safe))
                        (cons __tmp196288 '()))))
                 (declare (not safe))
                 (cons __tmp196291 __tmp196287))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196225
           __tmp196286
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp196294
               (let ((__tmp196299
                      (let ((__tmp196300 |gxc[1]#_g196301_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp196300)))
                     (__tmp196295
                      (let ((__tmp196296
                             (let ((__tmp196297 |gxc[1]#_g196298_|))
                               (declare (not safe))
                               (cons 'bindings __tmp196297))))
                        (declare (not safe))
                        (cons __tmp196296 '()))))
                 (declare (not safe))
                 (cons __tmp196299 __tmp196295))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj196225
           __tmp196294
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj196225))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx191394_)
        (let* ((_g191398191412_
                (lambda (_g191399191408_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g191399191408_))))
               (_g191397191453_
                (lambda (_g191399191416_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g191399191416_))
                      (let ((_e191403191419_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g191399191416_))))
                        (let ((_hd191402191423_
                               (let ()
                                 (declare (not safe))
                                 (##car _e191403191419_)))
                              (_tl191401191426_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e191403191419_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl191401191426_))
                              (let ((_e191406191429_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl191401191426_))))
                                (let ((_hd191405191433_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e191406191429_)))
                                      (_tl191404191436_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e191406191429_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl191404191436_))
                                      ((lambda (_L191439_)
                                         (let ((__tmp196309
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp196302
                                                (let ((__tmp196308
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp196303
                                                       (let ((__tmp196304
                                                              (let ((__tmp196307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp196305
                             (let ((__tmp196306
                                    (let ()
                                      (declare (not safe))
                                      (cons _L191439_ '()))))
                               (declare (not safe))
                               (cons '() __tmp196306))))
                        (declare (not safe))
                        (cons __tmp196307 __tmp196305))))
                 (declare (not safe))
                 (cons __tmp196304 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp196308
                                                        __tmp196303))))
                                           (declare (not safe))
                                           (cons __tmp196309 __tmp196302)))
                                       _hd191405191433_)
                                      (_g191398191412_ _g191399191416_))))
                              (_g191398191412_ _g191399191416_))))
                      (_g191398191412_ _g191399191416_)))))
          (_g191397191453_ _$stx191394_))))))
