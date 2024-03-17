(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g99221_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99223_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99225_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99230_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99233_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99238_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99241_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99246_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99249_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99254_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g99257_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx98578_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx98578_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx98581_)
        (let* ((_g9858498608_
                (lambda (_g9858598604_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9858598604_))))
               (_g9858398911_
                (lambda (_g9858598612_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9858598612_))
                      (let ((_e9859098615_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9858598612_))))
                        (let ((_hd9858998619_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9859098615_)))
                              (_tl9858898622_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9859098615_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9858898622_))
                              (let ((_e9859398625_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9858898622_))))
                                (let ((_hd9859298629_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9859398625_)))
                                      (_tl9859198632_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9859398625_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9859198632_))
                                      (let ((_g99192_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9859198632_
                                                '0))))
                                        (begin
                                          (let ((_g99193_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g99192_)
                                                       (##vector-length
                                                        _g99192_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g99193_ 2)))
                                                (error "Context expects 2 values"
                                                       _g99193_)))
                                          (let ((_target9859498635_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99192_ 0)))
                                                (_tl9859698638_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g99192_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9859698638_))
                                                (letrec ((_loop9859798641_
                                                          (lambda (_hd9859598645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9860198648_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9859598645_))
                        (let ((_e9859898651_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9859598645_))))
                          (let ((_lp-hd9859998655_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9859898651_)))
                                (_lp-tl9860098658_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9859898651_))))
                            (_loop9859798641_
                             _lp-tl9860098658_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9859998655_ _clause9860198648_)))))
                        (let ((_clause9860298661_
                               (reverse _clause9860198648_)))
                          ((lambda (_L98665_ _L98667_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L98667_))
                                 (let* ((_g9868698703_
                                         (lambda (_g9868798699_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9868798699_))))
                                        (_g9868598764_
                                         (lambda (_g9868798707_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9868798707_))
                                               (let ((_g99194_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9868798707_
                                                         '0))))
                                                 (begin
                                                   (let ((_g99195_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g99194_)
                        (##vector-length _g99194_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g99195_ 2)))
                 (error "Context expects 2 values" _g99195_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9868998710_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99194_
                                                             0)))
                                                         (_tl9869198713_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g99194_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9869198713_))
                                                         (letrec ((_loop9869298716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9869098720_ _clause9869698723_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9869098720_))
                                 (let ((_e9869398726_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9869098720_))))
                                   (let ((_lp-hd9869498730_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9869398726_)))
                                         (_lp-tl9869598733_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9869398726_))))
                                     (_loop9869298716_
                                      _lp-tl9869598733_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9869498730_
                                              _clause9869698723_)))))
                                 (let ((_clause9869798736_
                                        (reverse _clause9869698723_)))
                                   ((lambda (_L98740_)
                                      (let ()
                                        (let ((__tmp99207
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp99196
                                               (let ((__tmp99205
                                                      (let ((__tmp99206
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp99206 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp99197
                                                      (let ((__tmp99198
                                                             (let ((__tmp99204
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp99199
                            (let ((__tmp99203
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp99200
                                   (let ((__tmp99201
                                          (let ((__tmp99202
                                                 (lambda (_g9875598758_
                                                          _g9875698761_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9875598758_
                                                           _g9875698761_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp99202 '() _L98740_))))
                                     (declare (not safe))
                                     (cons _L98667_ __tmp99201))))
                              (declare (not safe))
                              (cons __tmp99203 __tmp99200))))
                       (declare (not safe))
                       (cons __tmp99204 __tmp99199))))
                (declare (not safe))
                (cons __tmp99198 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp99205
                                                       __tmp99197))))
                                          (declare (not safe))
                                          (cons __tmp99207 __tmp99196))))
                                    _clause9869798736_))))))
                   (_loop9869298716_ _target9868998710_ '()))
                 (_g9868698703_ _g9868798707_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9868698703_
                                                _g9868798707_)))))
                                   (_g9868598764_
                                    (let ((__tmp99210
                                           (lambda (_clause98768_)
                                             (let* ((___stx9913799138_
                                                     _clause98768_)
                                                    (_g9877298799_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9913799138_)))))
                                               (let ((___kont9914099141_
                                                      (lambda (_L98884_
                                                               _L98886_)
                                                        (let ((__tmp99211
                                                               (let ((__tmp99212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99214
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp99213
                                     (let ()
                                       (declare (not safe))
                                       (cons _L98884_ '()))))
                                (declare (not safe))
                                (cons __tmp99214 __tmp99213))))
                         (declare (not safe))
                         (cons __tmp99212 '()))))
                  (declare (not safe))
                  (cons _L98886_ __tmp99211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9914299143_
                                                      (lambda (_L98836_
                                                               _L98838_
                                                               _L98839_)
                                                        (let ((__tmp99215
                                                               (let ((__tmp99216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp99217
                                     (let ((__tmp99219
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp99218
                                            (let ()
                                              (declare (not safe))
                                              (cons _L98836_ '()))))
                                       (declare (not safe))
                                       (cons __tmp99219 __tmp99218))))
                                (declare (not safe))
                                (cons __tmp99217 '()))))
                         (declare (not safe))
                         (cons _L98838_ __tmp99216))))
                  (declare (not safe))
                  (cons _L98839_ __tmp99215)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9913799138_))
                                                     (let ((_e9877898864_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9913799138_))))
                                                       (let ((_tl9877698871_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9877898864_)))
                     (_hd9877798868_
                      (let () (declare (not safe)) (##car _e9877898864_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9877698871_))
                     (let ((_e9878198874_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9877698871_))))
                       (let ((_tl9877998881_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9878198874_)))
                             (_hd9878098878_
                              (let ()
                                (declare (not safe))
                                (##car _e9878198874_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9877998881_))
                             (___kont9914099141_ _hd9878098878_ _hd9877798868_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9877998881_))
                                 (let ((_e9879398826_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9877998881_))))
                                   (let ((_tl9879198833_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9879398826_)))
                                         (_hd9879298830_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9879398826_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9879198833_))
                                         (___kont9914299143_
                                          _hd9879298830_
                                          _hd9878098878_
                                          _hd9877798868_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9877298799_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9877298799_))))))
                     (let () (declare (not safe)) (_g9877298799_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9877298799_)))))))
                                          (__tmp99208
                                           (let ((__tmp99209
                                                  (lambda (_g9890298905_
                                                           _g9890398908_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9890298905_
                                                            _g9890398908_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp99209
                                                     '()
                                                     _L98665_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp99210 __tmp99208))))
                                 (_g9858498608_ _g9858598612_)))
                           _clause9860298661_
                           _hd9859298629_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9859798641_
                                                   _target9859498635_
                                                   '()))
                                                (_g9858498608_
                                                 _g9858598612_)))))
                                      (_g9858498608_ _g9858598612_))))
                              (_g9858498608_ _g9858598612_))))
                      (_g9858498608_ _g9858598612_)))))
          (_g9858398911_ _stx98581_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj99180
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
           __obj99180
           'gxc#symbol-table::t
           '1
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99180
           'symbol-table
           '2
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99180
           '(gensyms bindings)
           '4
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99180
           '()
           '3
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99180
           '#t
           '5
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99180
           '#f
           '6
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99180
           '#f
           '8
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99180
           ':init!
           '9
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99220 |gxc[1]#_g99221_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99180
           __tmp99220
           '10
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99222 |gxc[1]#_g99223_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99180
           __tmp99222
           '11
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99224 |gxc[1]#_g99225_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99180
           __tmp99224
           '12
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99226
               (let ((__tmp99231
                      (let ((__tmp99232 |gxc[1]#_g99233_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99232)))
                     (__tmp99227
                      (let ((__tmp99228
                             (let ((__tmp99229 |gxc[1]#_g99230_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99229))))
                        (declare (not safe))
                        (cons __tmp99228 '()))))
                 (declare (not safe))
                 (cons __tmp99231 __tmp99227))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99180
           __tmp99226
           '13
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99234
               (let ((__tmp99239
                      (let ((__tmp99240 |gxc[1]#_g99241_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99240)))
                     (__tmp99235
                      (let ((__tmp99236
                             (let ((__tmp99237 |gxc[1]#_g99238_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99237))))
                        (declare (not safe))
                        (cons __tmp99236 '()))))
                 (declare (not safe))
                 (cons __tmp99239 __tmp99235))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99180
           __tmp99234
           '14
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99242
               (let ((__tmp99247
                      (let ((__tmp99248 |gxc[1]#_g99249_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99248)))
                     (__tmp99243
                      (let ((__tmp99244
                             (let ((__tmp99245 |gxc[1]#_g99246_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99245))))
                        (declare (not safe))
                        (cons __tmp99244 '()))))
                 (declare (not safe))
                 (cons __tmp99247 __tmp99243))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99180
           __tmp99242
           '15
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        (let ((__tmp99250
               (let ((__tmp99255
                      (let ((__tmp99256 |gxc[1]#_g99257_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp99256)))
                     (__tmp99251
                      (let ((__tmp99252
                             (let ((__tmp99253 |gxc[1]#_g99254_|))
                               (declare (not safe))
                               (cons 'bindings __tmp99253))))
                        (declare (not safe))
                        (cons __tmp99252 '()))))
                 (declare (not safe))
                 (cons __tmp99255 __tmp99251))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj99180
           __tmp99250
           '16
           gerbil/core/mop~MOP-2#class-type-info::t
           '#f))
        __obj99180))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx98917_)
        (let* ((_g9892198935_
                (lambda (_g9892298931_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9892298931_))))
               (_g9892098976_
                (lambda (_g9892298939_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9892298939_))
                      (let ((_e9892698942_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9892298939_))))
                        (let ((_hd9892598946_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9892698942_)))
                              (_tl9892498949_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9892698942_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9892498949_))
                              (let ((_e9892998952_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9892498949_))))
                                (let ((_hd9892898956_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9892998952_)))
                                      (_tl9892798959_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9892998952_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9892798959_))
                                      ((lambda (_L98962_)
                                         (let ((__tmp99265
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp99258
                                                (let ((__tmp99264
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp99259
                                                       (let ((__tmp99260
                                                              (let ((__tmp99263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp99261
                             (let ((__tmp99262
                                    (let ()
                                      (declare (not safe))
                                      (cons _L98962_ '()))))
                               (declare (not safe))
                               (cons '() __tmp99262))))
                        (declare (not safe))
                        (cons __tmp99263 __tmp99261))))
                 (declare (not safe))
                 (cons __tmp99260 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp99264
                                                        __tmp99259))))
                                           (declare (not safe))
                                           (cons __tmp99265 __tmp99258)))
                                       _hd9892898956_)
                                      (_g9892198935_ _g9892298939_))))
                              (_g9892198935_ _g9892298939_))))
                      (_g9892198935_ _g9892298939_)))))
          (_g9892098976_ _$stx98917_))))))
