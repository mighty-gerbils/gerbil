(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g98278_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98280_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98282_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98287_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98290_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98295_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98298_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98303_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98306_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98311_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g98314_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx97635_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx97635_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx97638_)
        (let* ((_g9764197665_
                (lambda (_g9764297661_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9764297661_))))
               (_g9764097968_
                (lambda (_g9764297669_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9764297669_))
                      (let ((_e9764797672_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9764297669_))))
                        (let ((_hd9764697676_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9764797672_)))
                              (_tl9764597679_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9764797672_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9764597679_))
                              (let ((_e9765097682_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9764597679_))))
                                (let ((_hd9764997686_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9765097682_)))
                                      (_tl9764897689_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9765097682_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9764897689_))
                                      (let ((_g98249_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9764897689_
                                                '0))))
                                        (begin
                                          (let ((_g98250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g98249_)
                                                       (##vector-length
                                                        _g98249_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g98250_ 2)))
                                                (error "Context expects 2 values"
                                                       _g98250_)))
                                          (let ((_target9765197692_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98249_ 0)))
                                                (_tl9765397695_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98249_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9765397695_))
                                                (letrec ((_loop9765497698_
                                                          (lambda (_hd9765297702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9765897705_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9765297702_))
                        (let ((_e9765597708_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9765297702_))))
                          (let ((_lp-hd9765697712_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9765597708_)))
                                (_lp-tl9765797715_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9765597708_))))
                            (_loop9765497698_
                             _lp-tl9765797715_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9765697712_ _clause9765897705_)))))
                        (let ((_clause9765997718_
                               (reverse _clause9765897705_)))
                          ((lambda (_L97722_ _L97724_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L97724_))
                                 (let* ((_g9774397760_
                                         (lambda (_g9774497756_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9774497756_))))
                                        (_g9774297821_
                                         (lambda (_g9774497764_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9774497764_))
                                               (let ((_g98251_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9774497764_
                                                         '0))))
                                                 (begin
                                                   (let ((_g98252_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g98251_)
                        (##vector-length _g98251_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g98252_ 2)))
                 (error "Context expects 2 values" _g98252_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9774697767_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g98251_
                                                             0)))
                                                         (_tl9774897770_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g98251_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9774897770_))
                                                         (letrec ((_loop9774997773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9774797777_ _clause9775397780_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9774797777_))
                                 (let ((_e9775097783_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9774797777_))))
                                   (let ((_lp-hd9775197787_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9775097783_)))
                                         (_lp-tl9775297790_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9775097783_))))
                                     (_loop9774997773_
                                      _lp-tl9775297790_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9775197787_
                                              _clause9775397780_)))))
                                 (let ((_clause9775497793_
                                        (reverse _clause9775397780_)))
                                   ((lambda (_L97797_)
                                      (let ()
                                        (let ((__tmp98264
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp98253
                                               (let ((__tmp98262
                                                      (let ((__tmp98263
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp98263 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp98254
                                                      (let ((__tmp98255
                                                             (let ((__tmp98261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp98256
                            (let ((__tmp98260
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp98257
                                   (let ((__tmp98258
                                          (let ((__tmp98259
                                                 (lambda (_g9781297815_
                                                          _g9781397818_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9781297815_
                                                           _g9781397818_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp98259 '() _L97797_))))
                                     (declare (not safe))
                                     (cons _L97724_ __tmp98258))))
                              (declare (not safe))
                              (cons __tmp98260 __tmp98257))))
                       (declare (not safe))
                       (cons __tmp98261 __tmp98256))))
                (declare (not safe))
                (cons __tmp98255 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp98262
                                                       __tmp98254))))
                                          (declare (not safe))
                                          (cons __tmp98264 __tmp98253))))
                                    _clause9775497793_))))))
                   (_loop9774997773_ _target9774697767_ '()))
                 (_g9774397760_ _g9774497764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9774397760_
                                                _g9774497764_)))))
                                   (_g9774297821_
                                    (let ((__tmp98267
                                           (lambda (_clause97825_)
                                             (let* ((___stx9819498195_
                                                     _clause97825_)
                                                    (_g9782997856_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9819498195_)))))
                                               (let ((___kont9819798198_
                                                      (lambda (_L97941_
                                                               _L97943_)
                                                        (let ((__tmp98268
                                                               (let ((__tmp98269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp98271
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp98270
                                     (let ()
                                       (declare (not safe))
                                       (cons _L97941_ '()))))
                                (declare (not safe))
                                (cons __tmp98271 __tmp98270))))
                         (declare (not safe))
                         (cons __tmp98269 '()))))
                  (declare (not safe))
                  (cons _L97943_ __tmp98268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9819998200_
                                                      (lambda (_L97893_
                                                               _L97895_
                                                               _L97896_)
                                                        (let ((__tmp98272
                                                               (let ((__tmp98273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp98274
                                     (let ((__tmp98276
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp98275
                                            (let ()
                                              (declare (not safe))
                                              (cons _L97893_ '()))))
                                       (declare (not safe))
                                       (cons __tmp98276 __tmp98275))))
                                (declare (not safe))
                                (cons __tmp98274 '()))))
                         (declare (not safe))
                         (cons _L97895_ __tmp98273))))
                  (declare (not safe))
                  (cons _L97896_ __tmp98272)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9819498195_))
                                                     (let ((_e9783597921_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9819498195_))))
                                                       (let ((_tl9783397928_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9783597921_)))
                     (_hd9783497925_
                      (let () (declare (not safe)) (##car _e9783597921_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9783397928_))
                     (let ((_e9783897931_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9783397928_))))
                       (let ((_tl9783697938_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9783897931_)))
                             (_hd9783797935_
                              (let ()
                                (declare (not safe))
                                (##car _e9783897931_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9783697938_))
                             (___kont9819798198_ _hd9783797935_ _hd9783497925_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9783697938_))
                                 (let ((_e9785097883_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9783697938_))))
                                   (let ((_tl9784897890_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9785097883_)))
                                         (_hd9784997887_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9785097883_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9784897890_))
                                         (___kont9819998200_
                                          _hd9784997887_
                                          _hd9783797935_
                                          _hd9783497925_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9782997856_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9782997856_))))))
                     (let () (declare (not safe)) (_g9782997856_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9782997856_)))))))
                                          (__tmp98265
                                           (let ((__tmp98266
                                                  (lambda (_g9795997962_
                                                           _g9796097965_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9795997962_
                                                            _g9796097965_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp98266
                                                     '()
                                                     _L97722_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp98267 __tmp98265))))
                                 (_g9764197665_ _g9764297669_)))
                           _clause9765997718_
                           _hd9764997686_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9765497698_
                                                   _target9765197692_
                                                   '()))
                                                (_g9764197665_
                                                 _g9764297669_)))))
                                      (_g9764197665_ _g9764297669_))))
                              (_g9764197665_ _g9764297669_))))
                      (_g9764197665_ _g9764297669_)))))
          (_g9764097968_ _stx97638_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj98237
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
           __obj98237
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98237
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98237
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98237
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98237
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98237
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98237
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98237
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98277 |gxc[1]#_g98278_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98237
           __tmp98277
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98279 |gxc[1]#_g98280_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98237
           __tmp98279
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98281 |gxc[1]#_g98282_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98237
           __tmp98281
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98283
               (let ((__tmp98288
                      (let ((__tmp98289 |gxc[1]#_g98290_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98289)))
                     (__tmp98284
                      (let ((__tmp98285
                             (let ((__tmp98286 |gxc[1]#_g98287_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98286))))
                        (declare (not safe))
                        (cons __tmp98285 '()))))
                 (declare (not safe))
                 (cons __tmp98288 __tmp98284))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98237
           __tmp98283
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98291
               (let ((__tmp98296
                      (let ((__tmp98297 |gxc[1]#_g98298_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98297)))
                     (__tmp98292
                      (let ((__tmp98293
                             (let ((__tmp98294 |gxc[1]#_g98295_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98294))))
                        (declare (not safe))
                        (cons __tmp98293 '()))))
                 (declare (not safe))
                 (cons __tmp98296 __tmp98292))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98237
           __tmp98291
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98299
               (let ((__tmp98304
                      (let ((__tmp98305 |gxc[1]#_g98306_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98305)))
                     (__tmp98300
                      (let ((__tmp98301
                             (let ((__tmp98302 |gxc[1]#_g98303_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98302))))
                        (declare (not safe))
                        (cons __tmp98301 '()))))
                 (declare (not safe))
                 (cons __tmp98304 __tmp98300))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98237
           __tmp98299
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp98307
               (let ((__tmp98312
                      (let ((__tmp98313 |gxc[1]#_g98314_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp98313)))
                     (__tmp98308
                      (let ((__tmp98309
                             (let ((__tmp98310 |gxc[1]#_g98311_|))
                               (declare (not safe))
                               (cons 'bindings __tmp98310))))
                        (declare (not safe))
                        (cons __tmp98309 '()))))
                 (declare (not safe))
                 (cons __tmp98312 __tmp98308))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj98237
           __tmp98307
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj98237))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx97974_)
        (let* ((_g9797897992_
                (lambda (_g9797997988_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9797997988_))))
               (_g9797798033_
                (lambda (_g9797997996_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9797997996_))
                      (let ((_e9798397999_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9797997996_))))
                        (let ((_hd9798298003_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9798397999_)))
                              (_tl9798198006_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9798397999_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9798198006_))
                              (let ((_e9798698009_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9798198006_))))
                                (let ((_hd9798598013_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9798698009_)))
                                      (_tl9798498016_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9798698009_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9798498016_))
                                      ((lambda (_L98019_)
                                         (let ((__tmp98322
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp98315
                                                (let ((__tmp98321
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp98316
                                                       (let ((__tmp98317
                                                              (let ((__tmp98320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp98318
                             (let ((__tmp98319
                                    (let ()
                                      (declare (not safe))
                                      (cons _L98019_ '()))))
                               (declare (not safe))
                               (cons '() __tmp98319))))
                        (declare (not safe))
                        (cons __tmp98320 __tmp98318))))
                 (declare (not safe))
                 (cons __tmp98317 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp98321
                                                        __tmp98316))))
                                           (declare (not safe))
                                           (cons __tmp98322 __tmp98315)))
                                       _hd9798598013_)
                                      (_g9797897992_ _g9797997996_))))
                              (_g9797897992_ _g9797997996_))))
                      (_g9797897992_ _g9797997996_)))))
          (_g9797798033_ _$stx97974_))))))
