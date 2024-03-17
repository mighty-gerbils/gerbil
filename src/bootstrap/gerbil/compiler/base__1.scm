(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g99231_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99233_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99235_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99240_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99243_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99248_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99251_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99256_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99259_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99264_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99267_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx98588_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx98588_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx98591_)
        (let* ((_g9859498618_
                (lambda (_g9859598614_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9859598614_))))
               (_g9859398921_
                (lambda (_g9859598622_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9859598622_))
                      (let ((_e9860098625_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9859598622_))))
                        (let ((_hd9859998629_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9860098625_)))
                              (_tl9859898632_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9860098625_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9859898632_))
                              (let ((_e9860398635_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9859898632_))))
                                (let ((_hd9860298639_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9860398635_)))
                                      (_tl9860198642_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9860398635_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9860198642_))
                                      (let ((_g99202_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9860198642_
                                                '0))))
                                        (begin
                                          (let ((_g99203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g99202_)
                                                       (##vector-length
                                                        _g99202_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g99203_ 2)))
                                                (error "Context expects 2 values"
                                                       _g99203_)))
                                          (let ((_target9860498645_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99202_ 0)))
                                                (_tl9860698648_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99202_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9860698648_))
                                                (letrec ((_loop9860798651_
                                                          (lambda (_hd9860598655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9861198658_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9860598655_))
                        (let ((_e9860898661_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9860598655_))))
                          (let ((_lp-hd9860998665_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9860898661_)))
                                (_lp-tl9861098668_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9860898661_))))
                            (_loop9860798651_
                             _lp-tl9861098668_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9860998665_ _clause9861198658_)))))
                        (let ((_clause9861298671_
                               (reverse _clause9861198658_)))
                          ((lambda (_L98675_ _L98677_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L98677_))
                                 (let* ((_g9869698713_
                                         (lambda (_g9869798709_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9869798709_))))
                                        (_g9869598774_
                                         (lambda (_g9869798717_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9869798717_))
                                               (let ((_g99204_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9869798717_
                                                         '0))))
                                                 (begin
                                                   (let ((_g99205_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g99204_)
                        (##vector-length _g99204_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g99205_ 2)))
                 (error "Context expects 2 values" _g99205_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9869998720_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99204_
                                                             0)))
                                                         (_tl9870198723_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99204_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9870198723_))
                                                         (letrec ((_loop9870298726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9870098730_ _clause9870698733_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9870098730_))
                                 (let ((_e9870398736_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9870098730_))))
                                   (let ((_lp-hd9870498740_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9870398736_)))
                                         (_lp-tl9870598743_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9870398736_))))
                                     (_loop9870298726_
                                      _lp-tl9870598743_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9870498740_
                                              _clause9870698733_)))))
                                 (let ((_clause9870798746_
                                        (reverse _clause9870698733_)))
                                   ((lambda (_L98750_)
                                      (let ()
                                        (let ((__tmp99217
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp99206
                                               (let ((__tmp99215
                                                      (let ((__tmp99216
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp99216 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp99207
                                                      (let ((__tmp99208
                                                             (let ((__tmp99214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp99209
                            (let ((__tmp99213
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp99210
                                   (let ((__tmp99211
                                          (let ((__tmp99212
                                                 (lambda (_g9876598768_
                                                          _g9876698771_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9876598768_
                                                           _g9876698771_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp99212 '() _L98750_))))
                                     (declare (not safe))
                                     (cons _L98677_ __tmp99211))))
                              (declare (not safe))
                              (cons __tmp99213 __tmp99210))))
                       (declare (not safe))
                       (cons __tmp99214 __tmp99209))))
                (declare (not safe))
                (cons __tmp99208 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp99215
                                                       __tmp99207))))
                                          (declare (not safe))
                                          (cons __tmp99217 __tmp99206))))
                                    _clause9870798746_))))))
                   (_loop9870298726_ _target9869998720_ '()))
                 (_g9869698713_ _g9869798717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9869698713_
                                                _g9869798717_)))))
                                   (_g9869598774_
                                    (let ((__tmp99220
                                           (lambda (_clause98778_)
                                             (let* ((___stx9914799148_
                                                     _clause98778_)
                                                    (_g9878298809_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9914799148_)))))
                                               (let ((___kont9915099151_
                                                      (lambda (_L98894_
                                                               _L98896_)
                                                        (let ((__tmp99221
                                                               (let ((__tmp99222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99224
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp99223
                                     (let ()
                                       (declare (not safe))
                                       (cons _L98894_ '()))))
                                (declare (not safe))
                                (cons __tmp99224 __tmp99223))))
                         (declare (not safe))
                         (cons __tmp99222 '()))))
                  (declare (not safe))
                  (cons _L98896_ __tmp99221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9915299153_
                                                      (lambda (_L98846_
                                                               _L98848_
                                                               _L98849_)
                                                        (let ((__tmp99225
                                                               (let ((__tmp99226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99227
                                     (let ((__tmp99229
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp99228
                                            (let ()
                                              (declare (not safe))
                                              (cons _L98846_ '()))))
                                       (declare (not safe))
                                       (cons __tmp99229 __tmp99228))))
                                (declare (not safe))
                                (cons __tmp99227 '()))))
                         (declare (not safe))
                         (cons _L98848_ __tmp99226))))
                  (declare (not safe))
                  (cons _L98849_ __tmp99225)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9914799148_))
                                                     (let ((_e9878898874_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9914799148_))))
                                                       (let ((_tl9878698881_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9878898874_)))
                     (_hd9878798878_
                      (let () (declare (not safe)) (##car _e9878898874_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9878698881_))
                     (let ((_e9879198884_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9878698881_))))
                       (let ((_tl9878998891_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9879198884_)))
                             (_hd9879098888_
                              (let ()
                                (declare (not safe))
                                (##car _e9879198884_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9878998891_))
                             (___kont9915099151_ _hd9879098888_ _hd9878798878_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9878998891_))
                                 (let ((_e9880398836_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9878998891_))))
                                   (let ((_tl9880198843_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9880398836_)))
                                         (_hd9880298840_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9880398836_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9880198843_))
                                         (___kont9915299153_
                                          _hd9880298840_
                                          _hd9879098888_
                                          _hd9878798878_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9878298809_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9878298809_))))))
                     (let () (declare (not safe)) (_g9878298809_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9878298809_)))))))
                                          (__tmp99218
                                           (let ((__tmp99219
                                                  (lambda (_g9891298915_
                                                           _g9891398918_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9891298915_
                                                            _g9891398918_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp99219
                                                     '()
                                                     _L98675_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp99220 __tmp99218))))
                                 (_g9859498618_ _g9859598622_)))
                           _clause9861298671_
                           _hd9860298639_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9860798651_
                                                   _target9860498645_
                                                   '()))
                                                (_g9859498618_
                                                 _g9859598622_)))))
                                      (_g9859498618_ _g9859598622_))))
                              (_g9859498618_ _g9859598622_))))
                      (_g9859498618_ _g9859598622_)))))
          (_g9859398921_ _stx98591_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj99190
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
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
           __obj99190
           'gxc#symbol-table::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99190
           'symbol-table
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99190
           '(gensyms bindings)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99190
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99190
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99190
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99190
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99190
           ':init!
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99230 |gxc[1]#_g99231_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99190
           __tmp99230
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99232 |gxc[1]#_g99233_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99190
           __tmp99232
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99234 |gxc[1]#_g99235_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99190
           __tmp99234
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99236
               (let ((__tmp99241
                      (let ((__tmp99242 |gxc[1]#_g99243_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99242)))
                     (__tmp99237
                      (let ((__tmp99238
                             (let ((__tmp99239 |gxc[1]#_g99240_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99239))))
                        (declare (not safe))
                        (cons __tmp99238 '()))))
                 (declare (not safe))
                 (cons __tmp99241 __tmp99237))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99190
           __tmp99236
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99244
               (let ((__tmp99249
                      (let ((__tmp99250 |gxc[1]#_g99251_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99250)))
                     (__tmp99245
                      (let ((__tmp99246
                             (let ((__tmp99247 |gxc[1]#_g99248_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99247))))
                        (declare (not safe))
                        (cons __tmp99246 '()))))
                 (declare (not safe))
                 (cons __tmp99249 __tmp99245))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99190
           __tmp99244
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99252
               (let ((__tmp99257
                      (let ((__tmp99258 |gxc[1]#_g99259_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99258)))
                     (__tmp99253
                      (let ((__tmp99254
                             (let ((__tmp99255 |gxc[1]#_g99256_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99255))))
                        (declare (not safe))
                        (cons __tmp99254 '()))))
                 (declare (not safe))
                 (cons __tmp99257 __tmp99253))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99190
           __tmp99252
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99260
               (let ((__tmp99265
                      (let ((__tmp99266 |gxc[1]#_g99267_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99266)))
                     (__tmp99261
                      (let ((__tmp99262
                             (let ((__tmp99263 |gxc[1]#_g99264_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99263))))
                        (declare (not safe))
                        (cons __tmp99262 '()))))
                 (declare (not safe))
                 (cons __tmp99265 __tmp99261))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99190
           __tmp99260
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj99190))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx98927_)
        (let* ((_g9893198945_
                (lambda (_g9893298941_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9893298941_))))
               (_g9893098986_
                (lambda (_g9893298949_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9893298949_))
                      (let ((_e9893698952_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9893298949_))))
                        (let ((_hd9893598956_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9893698952_)))
                              (_tl9893498959_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9893698952_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9893498959_))
                              (let ((_e9893998962_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9893498959_))))
                                (let ((_hd9893898966_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9893998962_)))
                                      (_tl9893798969_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9893998962_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9893798969_))
                                      ((lambda (_L98972_)
                                         (let ((__tmp99275
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp99268
                                                (let ((__tmp99274
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp99269
                                                       (let ((__tmp99270
                                                              (let ((__tmp99273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp99271
                             (let ((__tmp99272
                                    (let ()
                                      (declare (not safe))
                                      (cons _L98972_ '()))))
                               (declare (not safe))
                               (cons '() __tmp99272))))
                        (declare (not safe))
                        (cons __tmp99273 __tmp99271))))
                 (declare (not safe))
                 (cons __tmp99270 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp99274
                                                        __tmp99269))))
                                           (declare (not safe))
                                           (cons __tmp99275 __tmp99268)))
                                       _hd9893898966_)
                                      (_g9893198945_ _g9893298949_))))
                              (_g9893198945_ _g9893298949_))))
                      (_g9893198945_ _g9893298949_)))))
          (_g9893098986_ _$stx98927_))))))
