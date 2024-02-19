(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g97207_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97209_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97211_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97216_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97219_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97224_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97227_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97232_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97235_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97240_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g97243_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx96564_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx96564_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx96567_)
        (let* ((_g9657096594_
                (lambda (_g9657196590_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9657196590_))))
               (_g9656996897_
                (lambda (_g9657196598_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9657196598_))
                      (let ((_e9657696601_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9657196598_))))
                        (let ((_hd9657596605_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9657696601_)))
                              (_tl9657496608_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9657696601_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9657496608_))
                              (let ((_e9657996611_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9657496608_))))
                                (let ((_hd9657896615_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9657996611_)))
                                      (_tl9657796618_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9657996611_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9657796618_))
                                      (let ((_g97178_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9657796618_
                                                '0))))
                                        (begin
                                          (let ((_g97179_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97178_)
                                                       (##vector-length
                                                        _g97178_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97179_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97179_)))
                                          (let ((_target9658096621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97178_ 0)))
                                                (_tl9658296624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97178_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9658296624_))
                                                (letrec ((_loop9658396627_
                                                          (lambda (_hd9658196631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9658796634_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9658196631_))
                        (let ((_e9658496637_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9658196631_))))
                          (let ((_lp-hd9658596641_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9658496637_)))
                                (_lp-tl9658696644_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9658496637_))))
                            (_loop9658396627_
                             _lp-tl9658696644_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9658596641_ _clause9658796634_)))))
                        (let ((_clause9658896647_
                               (reverse _clause9658796634_)))
                          ((lambda (_L96651_ _L96653_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L96653_))
                                 (let* ((_g9667296689_
                                         (lambda (_g9667396685_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9667396685_))))
                                        (_g9667196750_
                                         (lambda (_g9667396693_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9667396693_))
                                               (let ((_g97180_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9667396693_
                                                         '0))))
                                                 (begin
                                                   (let ((_g97181_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g97180_)
                        (##vector-length _g97180_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g97181_ 2)))
                 (error "Context expects 2 values" _g97181_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9667596696_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97180_
                                                             0)))
                                                         (_tl9667796699_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g97180_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9667796699_))
                                                         (letrec ((_loop9667896702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9667696706_ _clause9668296709_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9667696706_))
                                 (let ((_e9667996712_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9667696706_))))
                                   (let ((_lp-hd9668096716_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9667996712_)))
                                         (_lp-tl9668196719_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9667996712_))))
                                     (_loop9667896702_
                                      _lp-tl9668196719_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9668096716_
                                              _clause9668296709_)))))
                                 (let ((_clause9668396722_
                                        (reverse _clause9668296709_)))
                                   ((lambda (_L96726_)
                                      (let ()
                                        (let ((__tmp97193
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp97182
                                               (let ((__tmp97191
                                                      (let ((__tmp97192
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp97192 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp97183
                                                      (let ((__tmp97184
                                                             (let ((__tmp97190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp97185
                            (let ((__tmp97189
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp97186
                                   (let ((__tmp97187
                                          (let ((__tmp97188
                                                 (lambda (_g9674196744_
                                                          _g9674296747_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9674196744_
                                                           _g9674296747_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp97188 '() _L96726_))))
                                     (declare (not safe))
                                     (cons _L96653_ __tmp97187))))
                              (declare (not safe))
                              (cons __tmp97189 __tmp97186))))
                       (declare (not safe))
                       (cons __tmp97190 __tmp97185))))
                (declare (not safe))
                (cons __tmp97184 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp97191
                                                       __tmp97183))))
                                          (declare (not safe))
                                          (cons __tmp97193 __tmp97182))))
                                    _clause9668396722_))))))
                   (_loop9667896702_ _target9667596696_ '()))
                 (_g9667296689_ _g9667396693_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9667296689_
                                                _g9667396693_)))))
                                   (_g9667196750_
                                    (let ((__tmp97196
                                           (lambda (_clause96754_)
                                             (let* ((___stx9712397124_
                                                     _clause96754_)
                                                    (_g9675896785_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9712397124_)))))
                                               (let ((___kont9712697127_
                                                      (lambda (_L96870_
                                                               _L96872_)
                                                        (let ((__tmp97197
                                                               (let ((__tmp97198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97200
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp97199
                                     (let ()
                                       (declare (not safe))
                                       (cons _L96870_ '()))))
                                (declare (not safe))
                                (cons __tmp97200 __tmp97199))))
                         (declare (not safe))
                         (cons __tmp97198 '()))))
                  (declare (not safe))
                  (cons _L96872_ __tmp97197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9712897129_
                                                      (lambda (_L96822_
                                                               _L96824_
                                                               _L96825_)
                                                        (let ((__tmp97201
                                                               (let ((__tmp97202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp97203
                                     (let ((__tmp97205
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp97204
                                            (let ()
                                              (declare (not safe))
                                              (cons _L96822_ '()))))
                                       (declare (not safe))
                                       (cons __tmp97205 __tmp97204))))
                                (declare (not safe))
                                (cons __tmp97203 '()))))
                         (declare (not safe))
                         (cons _L96824_ __tmp97202))))
                  (declare (not safe))
                  (cons _L96825_ __tmp97201)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9712397124_))
                                                     (let ((_e9676496850_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9712397124_))))
                                                       (let ((_tl9676296857_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9676496850_)))
                     (_hd9676396854_
                      (let () (declare (not safe)) (##car _e9676496850_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9676296857_))
                     (let ((_e9676796860_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9676296857_))))
                       (let ((_tl9676596867_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9676796860_)))
                             (_hd9676696864_
                              (let ()
                                (declare (not safe))
                                (##car _e9676796860_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9676596867_))
                             (___kont9712697127_ _hd9676696864_ _hd9676396854_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9676596867_))
                                 (let ((_e9677996812_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9676596867_))))
                                   (let ((_tl9677796819_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9677996812_)))
                                         (_hd9677896816_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9677996812_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9677796819_))
                                         (___kont9712897129_
                                          _hd9677896816_
                                          _hd9676696864_
                                          _hd9676396854_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9675896785_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9675896785_))))))
                     (let () (declare (not safe)) (_g9675896785_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9675896785_)))))))
                                          (__tmp97194
                                           (let ((__tmp97195
                                                  (lambda (_g9688896891_
                                                           _g9688996894_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9688896891_
                                                            _g9688996894_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp97195
                                                     '()
                                                     _L96651_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp97196 __tmp97194))))
                                 (_g9657096594_ _g9657196598_)))
                           _clause9658896647_
                           _hd9657896615_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9658396627_
                                                   _target9658096621_
                                                   '()))
                                                (_g9657096594_
                                                 _g9657196598_)))))
                                      (_g9657096594_ _g9657196598_))))
                              (_g9657096594_ _g9657196598_))))
                      (_g9657096594_ _g9657196598_)))))
          (_g9656996897_ _stx96567_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj97166
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
           __obj97166
           'gxc#symbol-table::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97166
           'symbol-table
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97166
           '(gensyms bindings)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97166
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97166
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97166
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97166
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97166
           ':init!
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97206 |gxc[1]#_g97207_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97166
           __tmp97206
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97208 |gxc[1]#_g97209_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97166
           __tmp97208
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97210 |gxc[1]#_g97211_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97166
           __tmp97210
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97212
               (let ((__tmp97217
                      (let ((__tmp97218 |gxc[1]#_g97219_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97218)))
                     (__tmp97213
                      (let ((__tmp97214
                             (let ((__tmp97215 |gxc[1]#_g97216_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97215))))
                        (declare (not safe))
                        (cons __tmp97214 '()))))
                 (declare (not safe))
                 (cons __tmp97217 __tmp97213))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97166
           __tmp97212
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97220
               (let ((__tmp97225
                      (let ((__tmp97226 |gxc[1]#_g97227_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97226)))
                     (__tmp97221
                      (let ((__tmp97222
                             (let ((__tmp97223 |gxc[1]#_g97224_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97223))))
                        (declare (not safe))
                        (cons __tmp97222 '()))))
                 (declare (not safe))
                 (cons __tmp97225 __tmp97221))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97166
           __tmp97220
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97228
               (let ((__tmp97233
                      (let ((__tmp97234 |gxc[1]#_g97235_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97234)))
                     (__tmp97229
                      (let ((__tmp97230
                             (let ((__tmp97231 |gxc[1]#_g97232_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97231))))
                        (declare (not safe))
                        (cons __tmp97230 '()))))
                 (declare (not safe))
                 (cons __tmp97233 __tmp97229))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97166
           __tmp97228
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp97236
               (let ((__tmp97241
                      (let ((__tmp97242 |gxc[1]#_g97243_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp97242)))
                     (__tmp97237
                      (let ((__tmp97238
                             (let ((__tmp97239 |gxc[1]#_g97240_|))
                               (declare (not safe))
                               (cons 'bindings __tmp97239))))
                        (declare (not safe))
                        (cons __tmp97238 '()))))
                 (declare (not safe))
                 (cons __tmp97241 __tmp97237))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj97166
           __tmp97236
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj97166))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx96903_)
        (let* ((_g9690796921_
                (lambda (_g9690896917_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9690896917_))))
               (_g9690696962_
                (lambda (_g9690896925_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9690896925_))
                      (let ((_e9691296928_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9690896925_))))
                        (let ((_hd9691196932_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9691296928_)))
                              (_tl9691096935_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9691296928_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9691096935_))
                              (let ((_e9691596938_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9691096935_))))
                                (let ((_hd9691496942_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9691596938_)))
                                      (_tl9691396945_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9691596938_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9691396945_))
                                      ((lambda (_L96948_)
                                         (let ((__tmp97251
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp97244
                                                (let ((__tmp97250
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp97245
                                                       (let ((__tmp97246
                                                              (let ((__tmp97249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp97247
                             (let ((__tmp97248
                                    (let ()
                                      (declare (not safe))
                                      (cons _L96948_ '()))))
                               (declare (not safe))
                               (cons '() __tmp97248))))
                        (declare (not safe))
                        (cons __tmp97249 __tmp97247))))
                 (declare (not safe))
                 (cons __tmp97246 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97250
                                                        __tmp97245))))
                                           (declare (not safe))
                                           (cons __tmp97251 __tmp97244)))
                                       _hd9691496942_)
                                      (_g9690796921_ _g9690896925_))))
                              (_g9690796921_ _g9690896925_))))
                      (_g9690796921_ _g9690896925_)))))
          (_g9690696962_ _$stx96903_))))))
