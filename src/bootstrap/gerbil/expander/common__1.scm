(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g81207_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81209_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81211_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81216_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81219_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81224_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81227_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81232_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81235_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81240_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81243_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g81350_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj81202
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop$<MOP:2>#class-type-info::t
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81202
           'gerbil#AST::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81202
           'syntax
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81202
           '(e source)
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81202
           '()
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81202
           '#t
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81202
           '#f
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81202
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81202
           '#f
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp81206 |gx[1]#_g81207_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81202
           __tmp81206
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp81208 |gx[1]#_g81209_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81202
           __tmp81208
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp81210 |gx[1]#_g81211_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81202
           __tmp81210
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp81212
               (let ((__tmp81217
                      (let ((__tmp81218 |gx[1]#_g81219_|))
                        (declare (not safe))
                        (cons 'e __tmp81218)))
                     (__tmp81213
                      (let ((__tmp81214
                             (let ((__tmp81215 |gx[1]#_g81216_|))
                               (declare (not safe))
                               (cons 'source __tmp81215))))
                        (declare (not safe))
                        (cons __tmp81214 '()))))
                 (declare (not safe))
                 (cons __tmp81217 __tmp81213))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81202
           __tmp81212
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp81220
               (let ((__tmp81225
                      (let ((__tmp81226 |gx[1]#_g81227_|))
                        (declare (not safe))
                        (cons 'e __tmp81226)))
                     (__tmp81221
                      (let ((__tmp81222
                             (let ((__tmp81223 |gx[1]#_g81224_|))
                               (declare (not safe))
                               (cons 'source __tmp81223))))
                        (declare (not safe))
                        (cons __tmp81222 '()))))
                 (declare (not safe))
                 (cons __tmp81225 __tmp81221))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81202
           __tmp81220
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp81228
               (let ((__tmp81233
                      (let ((__tmp81234 |gx[1]#_g81235_|))
                        (declare (not safe))
                        (cons 'e __tmp81234)))
                     (__tmp81229
                      (let ((__tmp81230
                             (let ((__tmp81231 |gx[1]#_g81232_|))
                               (declare (not safe))
                               (cons 'source __tmp81231))))
                        (declare (not safe))
                        (cons __tmp81230 '()))))
                 (declare (not safe))
                 (cons __tmp81233 __tmp81229))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81202
           __tmp81228
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp81236
               (let ((__tmp81241
                      (let ((__tmp81242 |gx[1]#_g81243_|))
                        (declare (not safe))
                        (cons 'e __tmp81242)))
                     (__tmp81237
                      (let ((__tmp81238
                             (let ((__tmp81239 |gx[1]#_g81240_|))
                               (declare (not safe))
                               (cons 'source __tmp81239))))
                        (declare (not safe))
                        (cons __tmp81238 '()))))
                 (declare (not safe))
                 (cons __tmp81241 __tmp81237))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj81202
           __tmp81236
           '16
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj81202))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx79822_)
        (let* ((_g7982679840_
                (lambda (_g7982779836_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7982779836_)))
               (_g7982579882_
                (lambda (_g7982779844_)
                  (if (gx#stx-pair? _g7982779844_)
                      (let ((_e7983179847_ (gx#syntax-e _g7982779844_)))
                        (let ((_hd7983079851_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7983179847_)))
                              (_tl7982979854_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7983179847_))))
                          (if (gx#stx-pair? _tl7982979854_)
                              (let ((_e7983479857_
                                     (gx#syntax-e _tl7982979854_)))
                                (let ((_hd7983379861_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7983479857_)))
                                      (_tl7983279864_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7983479857_))))
                                  (if (gx#stx-null? _tl7983279864_)
                                      ((lambda (_L79867_)
                                         (let ((__tmp81253
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp81244
                                                (let ((__tmp81250
                                                       (let ((__tmp81252
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp81251
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L79867_ '()))))
                 (declare (not safe))
                 (cons __tmp81252 __tmp81251)))
              (__tmp81245
               (let ((__tmp81246
                      (let ((__tmp81249 (gx#datum->syntax '#f 'error))
                            (__tmp81247
                             (let ((__tmp81248
                                    (let ()
                                      (declare (not safe))
                                      (cons _L79867_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp81248))))
                        (declare (not safe))
                        (cons __tmp81249 __tmp81247))))
                 (declare (not safe))
                 (cons __tmp81246 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81250
                                                        __tmp81245))))
                                           (declare (not safe))
                                           (cons __tmp81253 __tmp81244)))
                                       _hd7983379861_)
                                      (_g7982679840_ _g7982779844_))))
                              (_g7982679840_ _g7982779844_))))
                      (_g7982679840_ _g7982779844_)))))
          (_g7982579882_ _$stx79822_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx79886_)
        (letrec ((_generate79889_
                  (lambda (_tgt80038_ _kws80040_ _clauses80041_)
                    (letrec ((_generate-clause80043_
                              (lambda (_hd80953_ _E80955_)
                                (let* ((___stx8110581106_ _hd80953_)
                                       (_g8095980986_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx8110581106_))))
                                  (let ((___kont8110881109_
                                         (lambda (_L81082_ _L81084_)
                                           (_generate180045_
                                            _hd80953_
                                            _L81084_
                                            '#t
                                            _L81082_
                                            _E80955_)))
                                        (___kont8111081111_
                                         (lambda (_L81034_ _L81036_ _L81037_)
                                           (_generate180045_
                                            _hd80953_
                                            _L81037_
                                            _L81036_
                                            _L81034_
                                            _E80955_)))
                                        (___kont8111281113_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx79886_
                                            _hd80953_))))
                                    (if (gx#stx-pair? ___stx8110581106_)
                                        (let ((_e8096581062_
                                               (gx#syntax-e
                                                ___stx8110581106_)))
                                          (let ((_tl8096381069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e8096581062_)))
                                                (_hd8096481066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e8096581062_))))
                                            (if (gx#stx-pair? _tl8096381069_)
                                                (let ((_e8096881072_
                                                       (gx#syntax-e
                                                        _tl8096381069_)))
                                                  (let ((_tl8096681079_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e8096881072_)))
                                                        (_hd8096781076_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e8096881072_))))
                                                    (if (gx#stx-null?
                                                         _tl8096681079_)
                                                        (___kont8110881109_
                                                         _hd8096781076_
                                                         _hd8096481066_)
                                                        (if (gx#stx-pair?
                                                             _tl8096681079_)
                                                            (let ((_e8098081024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl8096681079_)))
                      (let ((_tl8097881031_
                             (let ()
                               (declare (not safe))
                               (##cdr _e8098081024_)))
                            (_hd8097981028_
                             (let ()
                               (declare (not safe))
                               (##car _e8098081024_))))
                        (if (gx#stx-null? _tl8097881031_)
                            (___kont8111081111_
                             _hd8097981028_
                             _hd8096781076_
                             _hd8096481066_)
                            (___kont8111281113_))))
                    (___kont8111281113_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont8111281113_))))
                                        (___kont8111281113_))))))
                             (_generate180045_
                              (lambda (_where80431_
                                       _hd80433_
                                       _fender80434_
                                       _body80435_
                                       _E80436_)
                                (letrec ((_recur80438_
                                          (lambda (_hd80441_
                                                   _tgt80443_
                                                   _K80444_)
                                            (let* ((___stx8115181152_
                                                    _hd80441_)
                                                   (_g8044780459_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx8115181152_))))
                                              (let ((___kont8115481155_
                                                     (lambda (_L80743_
                                                              _L80745_)
                                                       (let* ((_g8075680764_
                                                               (lambda (_g8075780760_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g8075780760_)))
                      (_g8075580945_
                       (lambda (_g8075780768_)
                         ((lambda (_L80771_)
                            (let ()
                              (let* ((_g8078380791_
                                      (lambda (_g8078480787_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g8078480787_)))
                                     (_g8078280941_
                                      (lambda (_g8078480795_)
                                        ((lambda (_L80798_)
                                           (let ()
                                             (let* ((_g8081180819_
                                                     (lambda (_g8081280815_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8081280815_)))
                                                    (_g8081080937_
                                                     (lambda (_g8081280823_)
                                                       ((lambda (_L80826_)
                                                          (let ()
                                                            (let* ((_g8083980847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g8084080843_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g8084080843_)))
                           (_g8083880933_
                            (lambda (_g8084080851_)
                              ((lambda (_L80854_)
                                 (let ()
                                   (let* ((_g8086780875_
                                           (lambda (_g8086880871_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g8086880871_)))
                                          (_g8086680929_
                                           (lambda (_g8086880879_)
                                             ((lambda (_L80882_)
                                                (let ()
                                                  (let* ((_g8089580903_
                                                          (lambda (_g8089680899_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g8089680899_)))
                                                         (_g8089480925_
                                                          (lambda (_g8089680907_)
                                                            ((lambda (_L80910_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp81286 (gx#datum->syntax '#f 'if))
                                 (__tmp81254
                                  (let ((__tmp81283
                                         (let ((__tmp81285
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp81284
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L80771_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81285 __tmp81284)))
                                        (__tmp81255
                                         (let ((__tmp81257
                                                (let ((__tmp81282
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp81258
                                                       (let ((__tmp81276
                                                              (let ((__tmp81277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp81278
                                    (let ((__tmp81279
                                           (let ((__tmp81281
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp81280
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L80771_ '()))))
                                             (declare (not safe))
                                             (cons __tmp81281 __tmp81280))))
                                      (declare (not safe))
                                      (cons __tmp81279 '()))))
                               (declare (not safe))
                               (cons _L80798_ __tmp81278))))
                        (declare (not safe))
                        (cons __tmp81277 '())))
                     (__tmp81259
                      (let ((__tmp81260
                             (let ((__tmp81275 (gx#datum->syntax '#f 'let))
                                   (__tmp81261
                                    (let ((__tmp81263
                                           (let ((__tmp81270
                                                  (let ((__tmp81271
                                                         (let ((__tmp81272
                                                                (let ((__tmp81274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp81273
                               (let ()
                                 (declare (not safe))
                                 (cons _L80798_ '()))))
                          (declare (not safe))
                          (cons __tmp81274 __tmp81273))))
                   (declare (not safe))
                   (cons __tmp81272 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L80826_
                                                          __tmp81271)))
                                                 (__tmp81264
                                                  (let ((__tmp81265
                                                         (let ((__tmp81266
                                                                (let ((__tmp81267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81269 (gx#datum->syntax '#f '##cdr))
                                     (__tmp81268
                                      (let ()
                                        (declare (not safe))
                                        (cons _L80798_ '()))))
                                 (declare (not safe))
                                 (cons __tmp81269 __tmp81268))))
                          (declare (not safe))
                          (cons __tmp81267 '()))))
                   (declare (not safe))
                   (cons _L80854_ __tmp81266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81265 '()))))
                                             (declare (not safe))
                                             (cons __tmp81270 __tmp81264)))
                                          (__tmp81262
                                           (let ()
                                             (declare (not safe))
                                             (cons _L80882_ '()))))
                                      (declare (not safe))
                                      (cons __tmp81263 __tmp81262))))
                               (declare (not safe))
                               (cons __tmp81275 __tmp81261))))
                        (declare (not safe))
                        (cons __tmp81260 '()))))
                 (declare (not safe))
                 (cons __tmp81276 __tmp81259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp81282
                                                        __tmp81258)))
                                               (__tmp81256
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L80910_ '()))))
                                           (declare (not safe))
                                           (cons __tmp81257 __tmp81256))))
                                    (declare (not safe))
                                    (cons __tmp81283 __tmp81255))))
                             (declare (not safe))
                             (cons __tmp81286 __tmp81254)))))
                     _g8089680907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g8089480925_ _E80436_))))
                                              _g8086880879_))))
                                     (_g8086680929_
                                      (_recur80438_
                                       _L80745_
                                       _L80826_
                                       (_recur80438_
                                        _L80743_
                                        _L80854_
                                        _K80444_))))))
                               _g8084080851_))))
                      (_g8083880933_ (gx#genident 'tl)))))
                _g8081280823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8081080937_
                                                (gx#genident 'hd)))))
                                         _g8078480795_))))
                                (_g8078280941_ (gx#genident 'e)))))
                          _g8075780768_))))
                 (_g8075580945_ _tgt80443_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8115681157_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd80441_)
                                                           (if (gx#underscore?
                                                                _hd80441_)
                                                               _K80444_
                                                               (if (let ((__tmp81331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g8046980471_)
                                    (gx#bound-identifier=?
                                     _g8046980471_
                                     _hd80441_))))
                             (declare (not safe))
                             (find __tmp81331 _kws80040_))
                           (let* ((_g8047580490_
                                   (lambda (_g8047680486_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8047680486_)))
                                  (_g8047480541_
                                   (lambda (_g8047680494_)
                                     (if (gx#stx-pair? _g8047680494_)
                                         (let ((_e8048180497_
                                                (gx#syntax-e _g8047680494_)))
                                           (let ((_hd8048080501_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8048180497_)))
                                                 (_tl8047980504_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8048180497_))))
                                             (if (gx#stx-pair? _tl8047980504_)
                                                 (let ((_e8048480507_
                                                        (gx#syntax-e
                                                         _tl8047980504_)))
                                                   (let ((_hd8048380511_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8048480507_)))
                                                         (_tl8048280514_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8048480507_))))
                                                     (if (gx#stx-null?
                                                          _tl8048280514_)
                                                         ((lambda (_L80517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80519_)
                    (let ()
                      (let ((__tmp81330 (gx#datum->syntax '#f 'if))
                            (__tmp81313
                             (let ((__tmp81316
                                    (let ((__tmp81329
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp81317
                                           (let ((__tmp81326
                                                  (let ((__tmp81328
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp81327
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L80519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81328
                                                          __tmp81327)))
                                                 (__tmp81318
                                                  (let ((__tmp81319
                                                         (let ((__tmp81325
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp81320
                        (let ((__tmp81321
                               (let ((__tmp81322
                                      (let ((__tmp81324
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp81323
                                             (let ()
                                               (declare (not safe))
                                               (cons _L80517_ '()))))
                                        (declare (not safe))
                                        (cons __tmp81324 __tmp81323))))
                                 (declare (not safe))
                                 (cons __tmp81322 '()))))
                          (declare (not safe))
                          (cons _L80519_ __tmp81321))))
                   (declare (not safe))
                   (cons __tmp81325 __tmp81320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81319 '()))))
                                             (declare (not safe))
                                             (cons __tmp81326 __tmp81318))))
                                      (declare (not safe))
                                      (cons __tmp81329 __tmp81317)))
                                   (__tmp81314
                                    (let ((__tmp81315
                                           (let ()
                                             (declare (not safe))
                                             (cons _E80436_ '()))))
                                      (declare (not safe))
                                      (cons _K80444_ __tmp81315))))
                               (declare (not safe))
                               (cons __tmp81316 __tmp81314))))
                        (declare (not safe))
                        (cons __tmp81330 __tmp81313))))
                  _hd8048380511_
                  _hd8048080501_)
                 (_g8047580490_ _g8047680494_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8047580490_
                                                  _g8047680494_))))
                                         (_g8047580490_ _g8047680494_)))))
                             (_g8047480541_ (list _tgt80443_ _hd80441_)))
                           (let* ((_g8054580560_
                                   (lambda (_g8054680556_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8054680556_)))
                                  (_g8054480604_
                                   (lambda (_g8054680564_)
                                     (if (gx#stx-pair? _g8054680564_)
                                         (let ((_e8055180567_
                                                (gx#syntax-e _g8054680564_)))
                                           (let ((_hd8055080571_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8055180567_)))
                                                 (_tl8054980574_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8055180567_))))
                                             (if (gx#stx-pair? _tl8054980574_)
                                                 (let ((_e8055480577_
                                                        (gx#syntax-e
                                                         _tl8054980574_)))
                                                   (let ((_hd8055380581_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8055480577_)))
                                                         (_tl8055280584_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8055480577_))))
                                                     (if (gx#stx-null?
                                                          _tl8055280584_)
                                                         ((lambda (_L80587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L80589_)
                    (let ()
                      (let ((__tmp81312 (gx#datum->syntax '#f 'let))
                            (__tmp81307
                             (let ((__tmp81309
                                    (let ((__tmp81310
                                           (let ((__tmp81311
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L80589_ '()))))
                                             (declare (not safe))
                                             (cons _L80587_ __tmp81311))))
                                      (declare (not safe))
                                      (cons __tmp81310 '())))
                                   (__tmp81308
                                    (let ()
                                      (declare (not safe))
                                      (cons _K80444_ '()))))
                               (declare (not safe))
                               (cons __tmp81309 __tmp81308))))
                        (declare (not safe))
                        (cons __tmp81312 __tmp81307))))
                  _hd8055380581_
                  _hd8055080571_)
                 (_g8054580560_ _g8054680564_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8054580560_
                                                  _g8054680564_))))
                                         (_g8054580560_ _g8054680564_)))))
                             (_g8054480604_ (list _tgt80443_ _hd80441_)))))
                   (if (gx#stx-null? _hd80441_)
                       (let* ((_g8060880616_
                               (lambda (_g8060980612_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g8060980612_)))
                              (_g8060780634_
                               (lambda (_g8060980620_)
                                 ((lambda (_L80623_)
                                    (let ()
                                      (let ((__tmp81306
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp81300
                                             (let ((__tmp81303
                                                    (let ((__tmp81305
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp81304
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L80623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp81305 __tmp81304)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp81301
                                                    (let ((__tmp81302
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E80436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K80444_ __tmp81302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp81303 __tmp81301))))
                                        (declare (not safe))
                                        (cons __tmp81306 __tmp81300))))
                                  _g8060980620_))))
                         (_g8060780634_ _tgt80443_))
                       (if (gx#stx-datum? _hd80441_)
                           (let* ((_g8063880657_
                                   (lambda (_g8063980653_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g8063980653_)))
                                  (_g8063780715_
                                   (lambda (_g8063980661_)
                                     (if (gx#stx-pair? _g8063980661_)
                                         (let ((_e8064580664_
                                                (gx#syntax-e _g8063980661_)))
                                           (let ((_hd8064480668_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e8064580664_)))
                                                 (_tl8064380671_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e8064580664_))))
                                             (if (gx#stx-pair? _tl8064380671_)
                                                 (let ((_e8064880674_
                                                        (gx#syntax-e
                                                         _tl8064380671_)))
                                                   (let ((_hd8064780678_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e8064880674_)))
                                                         (_tl8064680681_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e8064880674_))))
                                                     (if (gx#stx-pair?
                                                          _tl8064680681_)
                                                         (let ((_e8065180684_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl8064680681_)))
                   (let ((_hd8065080688_
                          (let () (declare (not safe)) (##car _e8065180684_)))
                         (_tl8064980691_
                          (let () (declare (not safe)) (##cdr _e8065180684_))))
                     (if (gx#stx-null? _tl8064980691_)
                         ((lambda (_L80694_ _L80696_ _L80697_)
                            (let ()
                              (let ((__tmp81299 (gx#datum->syntax '#f 'if))
                                    (__tmp81287
                                     (let ((__tmp81290
                                            (let ((__tmp81291
                                                   (let ((__tmp81296
                                                          (let ((__tmp81298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp81297
                         (let () (declare (not safe)) (cons _L80697_ '()))))
                    (declare (not safe))
                    (cons __tmp81298 __tmp81297)))
                 (__tmp81292
                  (let ((__tmp81293
                         (let ((__tmp81295 (gx#datum->syntax '#f 'quote))
                               (__tmp81294
                                (let ()
                                  (declare (not safe))
                                  (cons _L80696_ '()))))
                           (declare (not safe))
                           (cons __tmp81295 __tmp81294))))
                    (declare (not safe))
                    (cons __tmp81293 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp81296
                                                           __tmp81292))))
                                              (declare (not safe))
                                              (cons _L80694_ __tmp81291)))
                                           (__tmp81288
                                            (let ((__tmp81289
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E80436_ '()))))
                                              (declare (not safe))
                                              (cons _K80444_ __tmp81289))))
                                       (declare (not safe))
                                       (cons __tmp81290 __tmp81288))))
                                (declare (not safe))
                                (cons __tmp81299 __tmp81287))))
                          _hd8065080688_
                          _hd8064780678_
                          _hd8064480668_)
                         (_g8063880657_ _g8063980661_))))
                 (_g8063880657_ _g8063980661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g8063880657_
                                                  _g8063980661_))))
                                         (_g8063880657_ _g8063980661_)))))
                             (_g8063780715_
                              (list _tgt80443_
                                    _hd80441_
                                    (let ((_e80719_ (gx#stx-e _hd80441_)))
                                      (if (or (keyword? _e80719_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e80719_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e80719_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx79886_
                            _where80431_
                            _hd80441_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx8115181152_)
                                                    (let ((_e8045380733_
                                                           (gx#syntax-e
                                                            ___stx8115181152_)))
                                                      (let ((_tl8045180740_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e8045380733_)))
                    (_hd8045280737_
                     (let () (declare (not safe)) (##car _e8045380733_))))
                (___kont8115481155_ _tl8045180740_ _hd8045280737_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont8115681157_)))))))
                                  (_recur80438_
                                   _hd80433_
                                   _tgt80038_
                                   (let ((__tmp81335
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp81332
                                          (let ((__tmp81333
                                                 (let ((__tmp81334
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E80436_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body80435_
                                                         __tmp81334))))
                                            (declare (not safe))
                                            (cons _fender80434_ __tmp81333))))
                                     (declare (not safe))
                                     (cons __tmp81335 __tmp81332))))))
                             (_generate-clauses80046_
                              (lambda (_clauses80169_)
                                (let _lp80172_ ((_rest80175_ _clauses80169_)
                                                (_E80177_ (gx#genident 'E))
                                                (_r80178_ '()))
                                  (let* ((___stx8118781188_ _rest80175_)
                                         (_g8018180193_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx8118781188_))))
                                    (let ((___kont8119081191_
                                           (lambda (_L80258_ _L80260_)
                                             (let* ((___stx8116781168_
                                                     _L80260_)
                                                    (_g8027280283_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx8116781168_))))
                                               (let ((___kont8117081171_
                                                      (lambda (_L80412_)
                                                        (if (gx#stx-null?
                                                             _L80258_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L80412_)
                             (let ((__tmp81344 (gx#stx-null? _L80412_)))
                               (declare (not safe))
                               (not __tmp81344)))
                        (let ((__tmp81336
                               (let ((__tmp81337
                                      (let ((__tmp81338
                                             (gx#stx-wrap-source
                                              (let ((__tmp81343
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp81339
                                                     (let ((__tmp81340
                                                            (let ((__tmp81341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81342 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp81342 _L80412_))))
                      (declare (not safe))
                      (cons __tmp81341 '()))))
               (declare (not safe))
               (cons '() __tmp81340))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81343 __tmp81339))
                                              (gx#stx-source _L80260_))))
                                        (declare (not safe))
                                        (cons __tmp81338 '()))))
                                 (declare (not safe))
                                 (cons _E80177_ __tmp81337))))
                          (declare (not safe))
                          (cons __tmp81336 _r80178_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx79886_
                         _L80260_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx79886_
                     _L80260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8117281173_
                                                      (lambda ()
                                                        (let* ((_g8029480302_
                                                                (lambda (_g8029580298_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g8029580298_)))
                       (_g8029380391_
                        (lambda (_g8029580306_)
                          ((lambda (_L80309_)
                             (let ()
                               (let* ((_g8032580333_
                                       (lambda (_g8032680329_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g8032680329_)))
                                      (_g8032480387_
                                       (lambda (_g8032680337_)
                                         ((lambda (_L80340_)
                                            (let ()
                                              (let* ((_g8035380361_
                                                      (lambda (_g8035480357_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g8035480357_)))
                                                     (_g8035280383_
                                                      (lambda (_g8035480365_)
                                                        ((lambda (_L80368_)
                                                           (let ()
                                                             (let ()
                                                               (_lp80172_
                                                                _L80258_
                                                                _L80309_
                                                                (let ((__tmp81345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp81346
                                      (let ()
                                        (declare (not safe))
                                        (cons _L80368_ '()))))
                                 (declare (not safe))
                                 (cons _E80177_ __tmp81346))))
                          (declare (not safe))
                          (cons __tmp81345 _r80178_))))))
                 _g8035480365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g8035280383_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp81349
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp81347
                                                         (let ((__tmp81348
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L80340_ '()))))
                   (declare (not safe))
                   (cons '() __tmp81348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81349
                                                          __tmp81347))
                                                  (gx#stx-source _L80260_))))))
                                          _g8032680337_))))
                                 (_g8032480387_
                                  (_generate-clause80043_
                                   _L80260_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L80309_ '())))))))
                           _g8029580306_))))
                  (_g8029380391_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx8116781168_)
                                                     (let ((_e8027780402_
                                                            (gx#syntax-e
                                                             ___stx8116781168_)))
                                                       (let ((_tl8027580409_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e8027780402_)))
                     (_hd8027680406_
                      (let () (declare (not safe)) (##car _e8027780402_))))
                 (if (gx#identifier? _hd8027680406_)
                     (if (gx#free-identifier=? |gx[1]#_g81350_| _hd8027680406_)
                         (___kont8117081171_ _tl8027580409_)
                         (___kont8117281173_))
                     (___kont8117281173_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont8117281173_))))))
                                          (___kont8119281193_
                                           (lambda ()
                                             (let* ((_g8020480212_
                                                     (lambda (_g8020580208_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g8020580208_)))
                                                    (_g8020380237_
                                                     (lambda (_g8020580216_)
                                                       ((lambda (_L80219_)
                                                          (let ()
                                                            (let ((__tmp81351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp81352
                                  (let ((__tmp81353
                                         (gx#stx-wrap-source
                                          (let ((__tmp81361
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp81354
                                                 (let ((__tmp81355
                                                        (let ((__tmp81356
                                                               (let ((__tmp81360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp81357
                              (let ((__tmp81358
                                     (let ((__tmp81359
                                            (let ()
                                              (declare (not safe))
                                              (cons _L80219_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp81359))))
                                (declare (not safe))
                                (cons '#f __tmp81358))))
                         (declare (not safe))
                         (cons __tmp81360 __tmp81357))))
                  (declare (not safe))
                  (cons __tmp81356 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp81355))))
                                            (declare (not safe))
                                            (cons __tmp81361 __tmp81354))
                                          (gx#stx-source _stx79886_))))
                                    (declare (not safe))
                                    (cons __tmp81353 '()))))
                             (declare (not safe))
                             (cons _E80177_ __tmp81352))))
                      (declare (not safe))
                      (cons __tmp81351 _r80178_))))
                _g8020580216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g8020380237_ _tgt80038_)))))
                                      (if (gx#stx-pair? ___stx8118781188_)
                                          (let ((_e8018780248_
                                                 (gx#syntax-e
                                                  ___stx8118781188_)))
                                            (let ((_tl8018580255_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8018780248_)))
                                                  (_hd8018680252_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8018780248_))))
                                              (___kont8119081191_
                                               _tl8018580255_
                                               _hd8018680252_)))
                                          (___kont8119281193_))))))))
                      (let* ((_bind80048_
                              (_generate-clauses80046_ _clauses80041_))
                             (_g8005180068_
                              (lambda (_g8005280064_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g8005280064_)))
                             (_g8005080165_
                              (lambda (_g8005280072_)
                                (if (gx#stx-pair/null? _g8005280072_)
                                    (let ((_g81362_
                                           (gx#syntax-split-splice
                                            _g8005280072_
                                            '0)))
                                      (begin
                                        (let ((_g81363_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g81362_)
                                                     (##vector-length _g81362_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g81363_ 2)))
                                              (error "Context expects 2 values"
                                                     _g81363_)))
                                        (let ((_target8005480075_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81362_ 0)))
                                              (_tl8005680078_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g81362_ 1))))
                                          (if (gx#stx-null? _tl8005680078_)
                                              (letrec ((_loop8005780081_
                                                        (lambda (_hd8005580085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try8006180088_)
                  (if (gx#stx-pair? _hd8005580085_)
                      (let ((_e8005880091_ (gx#syntax-e _hd8005580085_)))
                        (let ((_lp-hd8005980095_
                               (let ()
                                 (declare (not safe))
                                 (##car _e8005880091_)))
                              (_lp-tl8006080098_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e8005880091_))))
                          (_loop8005780081_
                           _lp-tl8006080098_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd8005980095_ _bind-try8006180088_)))))
                      (let ((_bind-try8006280101_
                             (reverse _bind-try8006180088_)))
                        ((lambda (_L80105_)
                           (let ()
                             (let* ((_g8012380131_
                                     (lambda (_g8012480127_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g8012480127_)))
                                    (_g8012280161_
                                     (lambda (_g8012480135_)
                                       ((lambda (_L80138_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp81369
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp81364
                                                     (let ((__tmp81367
                                                            (let ((__tmp81368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g8015280155_ _g8015380158_)
                             (let ()
                               (declare (not safe))
                               (cons _g8015280155_ _g8015380158_)))))
                      (declare (not safe))
                      (foldr1 __tmp81368 '() _L80105_)))
                   (__tmp81365
                    (let ((__tmp81366
                           (let () (declare (not safe)) (cons _L80138_ '()))))
                      (declare (not safe))
                      (cons __tmp81366 '()))))
               (declare (not safe))
               (cons __tmp81367 __tmp81365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp81369
                                                      __tmp81364)))))
                                        _g8012480135_))))
                               (_g8012280161_ (car (last _bind80048_))))))
                         _bind-try8006280101_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop8005780081_
                                                 _target8005480075_
                                                 '()))
                                              (_g8005180068_ _g8005280072_)))))
                                    (_g8005180068_ _g8005280072_)))))
                        (_g8005080165_ _bind80048_))))))
          (let* ((_g7989279911_
                  (lambda (_g7989379907_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7989379907_)))
                 (_g7989180034_
                  (lambda (_g7989379915_)
                    (if (gx#stx-pair? _g7989379915_)
                        (let ((_e7989979918_ (gx#syntax-e _g7989379915_)))
                          (let ((_hd7989879922_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7989979918_)))
                                (_tl7989779925_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7989979918_))))
                            (if (gx#stx-pair? _tl7989779925_)
                                (let ((_e7990279928_
                                       (gx#syntax-e _tl7989779925_)))
                                  (let ((_hd7990179932_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7990279928_)))
                                        (_tl7990079935_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7990279928_))))
                                    (if (gx#stx-pair? _tl7990079935_)
                                        (let ((_e7990579938_
                                               (gx#syntax-e _tl7990079935_)))
                                          (let ((_hd7990479942_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7990579938_)))
                                                (_tl7990379945_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7990579938_))))
                                            ((lambda (_L79948_
                                                      _L79950_
                                                      _L79951_)
                                               (if (and (gx#identifier-list?
                                                         _L79950_)
                                                        (gx#stx-list?
                                                         _L79948_))
                                                   (let* ((_g7996979977_
                                                           (lambda (_g7997079973_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7997079973_)))
                                                          (_g7996880030_
                                                           (lambda (_g7997079981_)
                                                             ((lambda (_L79984_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7999680004_
                                  (lambda (_g7999780000_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7999780000_)))
                                 (_g7999580026_
                                  (lambda (_g7999780008_)
                                    ((lambda (_L80011_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp81375
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp81370
                                                  (let ((__tmp81372
                                                         (let ((__tmp81373
                                                                (let ((__tmp81374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L79951_ '()))))
                          (declare (not safe))
                          (cons _L79984_ __tmp81374))))
                   (declare (not safe))
                   (cons __tmp81373 '())))
                (__tmp81371 (let () (declare (not safe)) (cons _L80011_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp81372
                                                          __tmp81371))))
                                             (declare (not safe))
                                             (cons __tmp81375 __tmp81370)))))
                                     _g7999780008_))))
                            (_g7999580026_
                             (_generate79889_
                              _L79984_
                              (gx#syntax->list _L79950_)
                              _L79948_)))))
                      _g7997079981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7996880030_
                                                      (gx#genident 'e)))
                                                   (_g7989279911_
                                                    _g7989379915_)))
                                             _tl7990379945_
                                             _hd7990479942_
                                             _hd7990179932_)))
                                        (_g7989279911_ _g7989379915_))))
                                (_g7989279911_ _g7989379915_))))
                        (_g7989279911_ _g7989379915_)))))
            (_g7989180034_ _stx79886_)))))))
