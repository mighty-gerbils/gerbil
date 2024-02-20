(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g97218_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97220_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97222_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97227_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97230_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97235_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97238_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97243_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97246_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97251_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97254_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx96575_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx96575_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx96578_)
        (let* ((_g9658196605_
                (lambda (_g9658296601_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9658296601_))))
               (_g9658096908_
                (lambda (_g9658296609_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9658296609_))
                      (let ((_e9658796612_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9658296609_))))
                        (let ((_hd9658696616_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9658796612_)))
                              (_tl9658596619_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9658796612_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9658596619_))
                              (let ((_e9659096622_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9658596619_))))
                                (let ((_hd9658996626_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9659096622_)))
                                      (_tl9658896629_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9659096622_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9658896629_))
                                      (let ((_g97189_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9658896629_
                                                '0))))
                                        (begin
                                          (let ((_g97190_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97189_)
                                                       (##vector-length
                                                        _g97189_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97190_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97190_)))
                                          (let ((_target9659196632_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97189_ 0)))
                                                (_tl9659396635_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97189_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9659396635_))
                                                (letrec ((_loop9659496638_
                                                          (lambda (_hd9659296642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9659896645_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9659296642_))
                        (let ((_e9659596648_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9659296642_))))
                          (let ((_lp-hd9659696652_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9659596648_)))
                                (_lp-tl9659796655_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9659596648_))))
                            (_loop9659496638_
                             _lp-tl9659796655_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9659696652_ _clause9659896645_)))))
                        (let ((_clause9659996658_
                               (reverse _clause9659896645_)))
                          ((lambda (_L96662_ _L96664_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L96664_))
                                 (let* ((_g9668396700_
                                         (lambda (_g9668496696_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9668496696_))))
                                        (_g9668296761_
                                         (lambda (_g9668496704_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9668496704_))
                                               (let ((_g97191_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9668496704_
                                                         '0))))
                                                 (begin
                                                   (let ((_g97192_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g97191_)
                        (##vector-length _g97191_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g97192_ 2)))
                 (error "Context expects 2 values" _g97192_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9668696707_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97191_
                                                             0)))
                                                         (_tl9668896710_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97191_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9668896710_))
                                                         (letrec ((_loop9668996713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9668796717_ _clause9669396720_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9668796717_))
                                 (let ((_e9669096723_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9668796717_))))
                                   (let ((_lp-hd9669196727_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9669096723_)))
                                         (_lp-tl9669296730_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9669096723_))))
                                     (_loop9668996713_
                                      _lp-tl9669296730_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9669196727_
                                              _clause9669396720_)))))
                                 (let ((_clause9669496733_
                                        (reverse _clause9669396720_)))
                                   ((lambda (_L96737_)
                                      (let ()
                                        (let ((__tmp97204
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp97193
                                               (let ((__tmp97202
                                                      (let ((__tmp97203
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp97203 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp97194
                                                      (let ((__tmp97195
                                                             (let ((__tmp97201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp97196
                            (let ((__tmp97200
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp97197
                                   (let ((__tmp97198
                                          (let ((__tmp97199
                                                 (lambda (_g9675296755_
                                                          _g9675396758_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9675296755_
                                                           _g9675396758_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp97199 '() _L96737_))))
                                     (declare (not safe))
                                     (cons _L96664_ __tmp97198))))
                              (declare (not safe))
                              (cons __tmp97200 __tmp97197))))
                       (declare (not safe))
                       (cons __tmp97201 __tmp97196))))
                (declare (not safe))
                (cons __tmp97195 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp97202
                                                       __tmp97194))))
                                          (declare (not safe))
                                          (cons __tmp97204 __tmp97193))))
                                    _clause9669496733_))))))
                   (_loop9668996713_ _target9668696707_ '()))
                 (_g9668396700_ _g9668496704_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9668396700_
                                                _g9668496704_)))))
                                   (_g9668296761_
                                    (let ((__tmp97207
                                           (lambda (_clause96765_)
                                             (let* ((___stx9713497135_
                                                     _clause96765_)
                                                    (_g9676996796_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9713497135_)))))
                                               (let ((___kont9713797138_
                                                      (lambda (_L96881_
                                                               _L96883_)
                                                        (let ((__tmp97208
                                                               (let ((__tmp97209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97211
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp97210
                                     (let ()
                                       (declare (not safe))
                                       (cons _L96881_ '()))))
                                (declare (not safe))
                                (cons __tmp97211 __tmp97210))))
                         (declare (not safe))
                         (cons __tmp97209 '()))))
                  (declare (not safe))
                  (cons _L96883_ __tmp97208))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9713997140_
                                                      (lambda (_L96833_
                                                               _L96835_
                                                               _L96836_)
                                                        (let ((__tmp97212
                                                               (let ((__tmp97213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97214
                                     (let ((__tmp97216
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp97215
                                            (let ()
                                              (declare (not safe))
                                              (cons _L96833_ '()))))
                                       (declare (not safe))
                                       (cons __tmp97216 __tmp97215))))
                                (declare (not safe))
                                (cons __tmp97214 '()))))
                         (declare (not safe))
                         (cons _L96835_ __tmp97213))))
                  (declare (not safe))
                  (cons _L96836_ __tmp97212)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9713497135_))
                                                     (let ((_e9677596861_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9713497135_))))
                                                       (let ((_tl9677396868_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9677596861_)))
                     (_hd9677496865_
                      (let () (declare (not safe)) (##car _e9677596861_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9677396868_))
                     (let ((_e9677896871_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9677396868_))))
                       (let ((_tl9677696878_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9677896871_)))
                             (_hd9677796875_
                              (let ()
                                (declare (not safe))
                                (##car _e9677896871_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9677696878_))
                             (___kont9713797138_ _hd9677796875_ _hd9677496865_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9677696878_))
                                 (let ((_e9679096823_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9677696878_))))
                                   (let ((_tl9678896830_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9679096823_)))
                                         (_hd9678996827_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9679096823_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9678896830_))
                                         (___kont9713997140_
                                          _hd9678996827_
                                          _hd9677796875_
                                          _hd9677496865_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9676996796_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9676996796_))))))
                     (let () (declare (not safe)) (_g9676996796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9676996796_)))))))
                                          (__tmp97205
                                           (let ((__tmp97206
                                                  (lambda (_g9689996902_
                                                           _g9690096905_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9689996902_
                                                            _g9690096905_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp97206
                                                     '()
                                                     _L96662_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp97207 __tmp97205))))
                                 (_g9658196605_ _g9658296609_)))
                           _clause9659996658_
                           _hd9658996626_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9659496638_
                                                   _target9659196632_
                                                   '()))
                                                (_g9658196605_
                                                 _g9658296609_)))))
                                      (_g9658196605_ _g9658296609_))))
                              (_g9658196605_ _g9658296609_))))
                      (_g9658196605_ _g9658296609_)))))
          (_g9658096908_ _stx96578_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj97177
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
           __obj97177
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97177
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97177
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97177
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97177
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97177
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97177
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97177
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97217 |gxc[1]#_g97218_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97177
           __tmp97217
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97219 |gxc[1]#_g97220_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97177
           __tmp97219
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97221 |gxc[1]#_g97222_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97177
           __tmp97221
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97223
               (let ((__tmp97228
                      (let ((__tmp97229 |gxc[1]#_g97230_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97229)))
                     (__tmp97224
                      (let ((__tmp97225
                             (let ((__tmp97226 |gxc[1]#_g97227_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97226))))
                        (declare (not safe))
                        (cons __tmp97225 '()))))
                 (declare (not safe))
                 (cons __tmp97228 __tmp97224))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97177
           __tmp97223
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97231
               (let ((__tmp97236
                      (let ((__tmp97237 |gxc[1]#_g97238_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97237)))
                     (__tmp97232
                      (let ((__tmp97233
                             (let ((__tmp97234 |gxc[1]#_g97235_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97234))))
                        (declare (not safe))
                        (cons __tmp97233 '()))))
                 (declare (not safe))
                 (cons __tmp97236 __tmp97232))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97177
           __tmp97231
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97239
               (let ((__tmp97244
                      (let ((__tmp97245 |gxc[1]#_g97246_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97245)))
                     (__tmp97240
                      (let ((__tmp97241
                             (let ((__tmp97242 |gxc[1]#_g97243_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97242))))
                        (declare (not safe))
                        (cons __tmp97241 '()))))
                 (declare (not safe))
                 (cons __tmp97244 __tmp97240))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97177
           __tmp97239
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97247
               (let ((__tmp97252
                      (let ((__tmp97253 |gxc[1]#_g97254_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97253)))
                     (__tmp97248
                      (let ((__tmp97249
                             (let ((__tmp97250 |gxc[1]#_g97251_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97250))))
                        (declare (not safe))
                        (cons __tmp97249 '()))))
                 (declare (not safe))
                 (cons __tmp97252 __tmp97248))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97177
           __tmp97247
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj97177))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx96914_)
        (let* ((_g9691896932_
                (lambda (_g9691996928_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9691996928_))))
               (_g9691796973_
                (lambda (_g9691996936_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9691996936_))
                      (let ((_e9692396939_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9691996936_))))
                        (let ((_hd9692296943_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9692396939_)))
                              (_tl9692196946_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9692396939_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9692196946_))
                              (let ((_e9692696949_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9692196946_))))
                                (let ((_hd9692596953_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9692696949_)))
                                      (_tl9692496956_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9692696949_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9692496956_))
                                      ((lambda (_L96959_)
                                         (let ((__tmp97262
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp97255
                                                (let ((__tmp97261
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp97256
                                                       (let ((__tmp97257
                                                              (let ((__tmp97260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp97258
                             (let ((__tmp97259
                                    (let ()
                                      (declare (not safe))
                                      (cons _L96959_ '()))))
                               (declare (not safe))
                               (cons '() __tmp97259))))
                        (declare (not safe))
                        (cons __tmp97260 __tmp97258))))
                 (declare (not safe))
                 (cons __tmp97257 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97261
                                                        __tmp97256))))
                                           (declare (not safe))
                                           (cons __tmp97262 __tmp97255)))
                                       _hd9692596953_)
                                      (_g9691896932_ _g9691996936_))))
                              (_g9691896932_ _g9691996936_))))
                      (_g9691896932_ _g9691996936_)))))
          (_g9691796973_ _$stx96914_))))))
