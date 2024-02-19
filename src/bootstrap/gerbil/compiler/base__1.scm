(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g97206_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97208_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97210_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97215_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97218_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97223_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97226_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97231_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97234_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97239_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97242_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx96563_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx96563_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx96566_)
        (let* ((_g9656996593_
                (lambda (_g9657096589_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9657096589_))))
               (_g9656896896_
                (lambda (_g9657096597_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9657096597_))
                      (let ((_e9657596600_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9657096597_))))
                        (let ((_hd9657496604_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9657596600_)))
                              (_tl9657396607_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9657596600_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9657396607_))
                              (let ((_e9657896610_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9657396607_))))
                                (let ((_hd9657796614_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9657896610_)))
                                      (_tl9657696617_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9657896610_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9657696617_))
                                      (let ((_g97177_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9657696617_
                                                '0))))
                                        (begin
                                          (let ((_g97178_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97177_)
                                                       (##vector-length
                                                        _g97177_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97178_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97178_)))
                                          (let ((_target9657996620_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97177_ 0)))
                                                (_tl9658196623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97177_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9658196623_))
                                                (letrec ((_loop9658296626_
                                                          (lambda (_hd9658096630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9658696633_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9658096630_))
                        (let ((_e9658396636_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9658096630_))))
                          (let ((_lp-hd9658496640_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9658396636_)))
                                (_lp-tl9658596643_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9658396636_))))
                            (_loop9658296626_
                             _lp-tl9658596643_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9658496640_ _clause9658696633_)))))
                        (let ((_clause9658796646_
                               (reverse _clause9658696633_)))
                          ((lambda (_L96650_ _L96652_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L96652_))
                                 (let* ((_g9667196688_
                                         (lambda (_g9667296684_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9667296684_))))
                                        (_g9667096749_
                                         (lambda (_g9667296692_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9667296692_))
                                               (let ((_g97179_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9667296692_
                                                         '0))))
                                                 (begin
                                                   (let ((_g97180_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g97179_)
                        (##vector-length _g97179_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g97180_ 2)))
                 (error "Context expects 2 values" _g97180_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9667496695_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97179_
                                                             0)))
                                                         (_tl9667696698_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97179_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9667696698_))
                                                         (letrec ((_loop9667796701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9667596705_ _clause9668196708_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9667596705_))
                                 (let ((_e9667896711_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9667596705_))))
                                   (let ((_lp-hd9667996715_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9667896711_)))
                                         (_lp-tl9668096718_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9667896711_))))
                                     (_loop9667796701_
                                      _lp-tl9668096718_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9667996715_
                                              _clause9668196708_)))))
                                 (let ((_clause9668296721_
                                        (reverse _clause9668196708_)))
                                   ((lambda (_L96725_)
                                      (let ()
                                        (let ((__tmp97192
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp97181
                                               (let ((__tmp97190
                                                      (let ((__tmp97191
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp97191 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp97182
                                                      (let ((__tmp97183
                                                             (let ((__tmp97189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp97184
                            (let ((__tmp97188
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp97185
                                   (let ((__tmp97186
                                          (let ((__tmp97187
                                                 (lambda (_g9674096743_
                                                          _g9674196746_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9674096743_
                                                           _g9674196746_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp97187 '() _L96725_))))
                                     (declare (not safe))
                                     (cons _L96652_ __tmp97186))))
                              (declare (not safe))
                              (cons __tmp97188 __tmp97185))))
                       (declare (not safe))
                       (cons __tmp97189 __tmp97184))))
                (declare (not safe))
                (cons __tmp97183 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp97190
                                                       __tmp97182))))
                                          (declare (not safe))
                                          (cons __tmp97192 __tmp97181))))
                                    _clause9668296721_))))))
                   (_loop9667796701_ _target9667496695_ '()))
                 (_g9667196688_ _g9667296692_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9667196688_
                                                _g9667296692_)))))
                                   (_g9667096749_
                                    (let ((__tmp97195
                                           (lambda (_clause96753_)
                                             (let* ((___stx9712297123_
                                                     _clause96753_)
                                                    (_g9675796784_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9712297123_)))))
                                               (let ((___kont9712597126_
                                                      (lambda (_L96869_
                                                               _L96871_)
                                                        (let ((__tmp97196
                                                               (let ((__tmp97197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97199
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp97198
                                     (let ()
                                       (declare (not safe))
                                       (cons _L96869_ '()))))
                                (declare (not safe))
                                (cons __tmp97199 __tmp97198))))
                         (declare (not safe))
                         (cons __tmp97197 '()))))
                  (declare (not safe))
                  (cons _L96871_ __tmp97196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9712797128_
                                                      (lambda (_L96821_
                                                               _L96823_
                                                               _L96824_)
                                                        (let ((__tmp97200
                                                               (let ((__tmp97201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97202
                                     (let ((__tmp97204
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp97203
                                            (let ()
                                              (declare (not safe))
                                              (cons _L96821_ '()))))
                                       (declare (not safe))
                                       (cons __tmp97204 __tmp97203))))
                                (declare (not safe))
                                (cons __tmp97202 '()))))
                         (declare (not safe))
                         (cons _L96823_ __tmp97201))))
                  (declare (not safe))
                  (cons _L96824_ __tmp97200)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9712297123_))
                                                     (let ((_e9676396849_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9712297123_))))
                                                       (let ((_tl9676196856_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9676396849_)))
                     (_hd9676296853_
                      (let () (declare (not safe)) (##car _e9676396849_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9676196856_))
                     (let ((_e9676696859_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9676196856_))))
                       (let ((_tl9676496866_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9676696859_)))
                             (_hd9676596863_
                              (let ()
                                (declare (not safe))
                                (##car _e9676696859_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9676496866_))
                             (___kont9712597126_ _hd9676596863_ _hd9676296853_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9676496866_))
                                 (let ((_e9677896811_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9676496866_))))
                                   (let ((_tl9677696818_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9677896811_)))
                                         (_hd9677796815_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9677896811_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9677696818_))
                                         (___kont9712797128_
                                          _hd9677796815_
                                          _hd9676596863_
                                          _hd9676296853_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9675796784_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9675796784_))))))
                     (let () (declare (not safe)) (_g9675796784_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9675796784_)))))))
                                          (__tmp97193
                                           (let ((__tmp97194
                                                  (lambda (_g9688796890_
                                                           _g9688896893_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9688796890_
                                                            _g9688896893_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp97194
                                                     '()
                                                     _L96650_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp97195 __tmp97193))))
                                 (_g9656996593_ _g9657096597_)))
                           _clause9658796646_
                           _hd9657796614_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9658296626_
                                                   _target9657996620_
                                                   '()))
                                                (_g9656996593_
                                                 _g9657096597_)))))
                                      (_g9656996593_ _g9657096597_))))
                              (_g9656996593_ _g9657096597_))))
                      (_g9656996593_ _g9657096597_)))))
          (_g9656896896_ _stx96566_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj97165
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
           __obj97165
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97165
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97165
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97165
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97165
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97165
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97165
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97165
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97205 |gxc[1]#_g97206_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97165
           __tmp97205
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97207 |gxc[1]#_g97208_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97165
           __tmp97207
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97209 |gxc[1]#_g97210_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97165
           __tmp97209
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97211
               (let ((__tmp97216
                      (let ((__tmp97217 |gxc[1]#_g97218_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97217)))
                     (__tmp97212
                      (let ((__tmp97213
                             (let ((__tmp97214 |gxc[1]#_g97215_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97214))))
                        (declare (not safe))
                        (cons __tmp97213 '()))))
                 (declare (not safe))
                 (cons __tmp97216 __tmp97212))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97165
           __tmp97211
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97219
               (let ((__tmp97224
                      (let ((__tmp97225 |gxc[1]#_g97226_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97225)))
                     (__tmp97220
                      (let ((__tmp97221
                             (let ((__tmp97222 |gxc[1]#_g97223_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97222))))
                        (declare (not safe))
                        (cons __tmp97221 '()))))
                 (declare (not safe))
                 (cons __tmp97224 __tmp97220))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97165
           __tmp97219
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97227
               (let ((__tmp97232
                      (let ((__tmp97233 |gxc[1]#_g97234_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97233)))
                     (__tmp97228
                      (let ((__tmp97229
                             (let ((__tmp97230 |gxc[1]#_g97231_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97230))))
                        (declare (not safe))
                        (cons __tmp97229 '()))))
                 (declare (not safe))
                 (cons __tmp97232 __tmp97228))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97165
           __tmp97227
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97235
               (let ((__tmp97240
                      (let ((__tmp97241 |gxc[1]#_g97242_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97241)))
                     (__tmp97236
                      (let ((__tmp97237
                             (let ((__tmp97238 |gxc[1]#_g97239_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97238))))
                        (declare (not safe))
                        (cons __tmp97237 '()))))
                 (declare (not safe))
                 (cons __tmp97240 __tmp97236))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97165
           __tmp97235
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj97165))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx96902_)
        (let* ((_g9690696920_
                (lambda (_g9690796916_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9690796916_))))
               (_g9690596961_
                (lambda (_g9690796924_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9690796924_))
                      (let ((_e9691196927_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9690796924_))))
                        (let ((_hd9691096931_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9691196927_)))
                              (_tl9690996934_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9691196927_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9690996934_))
                              (let ((_e9691496937_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9690996934_))))
                                (let ((_hd9691396941_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9691496937_)))
                                      (_tl9691296944_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9691496937_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9691296944_))
                                      ((lambda (_L96947_)
                                         (let ((__tmp97250
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp97243
                                                (let ((__tmp97249
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp97244
                                                       (let ((__tmp97245
                                                              (let ((__tmp97248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp97246
                             (let ((__tmp97247
                                    (let ()
                                      (declare (not safe))
                                      (cons _L96947_ '()))))
                               (declare (not safe))
                               (cons '() __tmp97247))))
                        (declare (not safe))
                        (cons __tmp97248 __tmp97246))))
                 (declare (not safe))
                 (cons __tmp97245 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97249
                                                        __tmp97244))))
                                           (declare (not safe))
                                           (cons __tmp97250 __tmp97243)))
                                       _hd9691396941_)
                                      (_g9690696920_ _g9690796924_))))
                              (_g9690696920_ _g9690796924_))))
                      (_g9690696920_ _g9690796924_)))))
          (_g9690596961_ _$stx96902_))))))
