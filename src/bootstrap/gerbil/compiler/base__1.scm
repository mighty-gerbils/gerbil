(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g95163_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g95165_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g95167_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g95172_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g95175_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g95180_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g95183_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g95188_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g95191_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g95196_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g95199_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx94520_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx94520_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx94523_)
        (let* ((_g9452694550_
                (lambda (_g9452794546_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9452794546_))))
               (_g9452594853_
                (lambda (_g9452794554_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9452794554_))
                      (let ((_e9453094557_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9452794554_))))
                        (let ((_hd9453194561_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9453094557_)))
                              (_tl9453294564_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9453094557_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9453294564_))
                              (let ((_e9453394567_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9453294564_))))
                                (let ((_hd9453494571_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9453394567_)))
                                      (_tl9453594574_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9453394567_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl9453594574_))
                                      (let ((_g95134_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl9453594574_
                                                '0))))
                                        (begin
                                          (let ((_g95135_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g95134_)
                                                       (##vector-length
                                                        _g95134_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g95135_ 2)))
                                                (error "Context expects 2 values"
                                                       _g95135_)))
                                          (let ((_target9453694577_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g95134_ 0)))
                                                (_tl9453894580_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g95134_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl9453894580_))
                                                (letrec ((_loop9453994583_
                                                          (lambda (_hd9453794587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause9454394590_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd9453794587_))
                        (let ((_e9454094593_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd9453794587_))))
                          (let ((_lp-hd9454194597_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9454094593_)))
                                (_lp-tl9454294600_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9454094593_))))
                            (_loop9453994583_
                             _lp-tl9454294600_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd9454194597_ _clause9454394590_)))))
                        (let ((_clause9454494603_
                               (reverse _clause9454394590_)))
                          ((lambda (_L94607_ _L94609_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L94609_))
                                 (let* ((_g9462894645_
                                         (lambda (_g9462994641_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g9462994641_))))
                                        (_g9462794706_
                                         (lambda (_g9462994649_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g9462994649_))
                                               (let ((_g95136_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g9462994649_
                                                         '0))))
                                                 (begin
                                                   (let ((_g95137_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g95136_)
                        (##vector-length _g95136_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g95137_ 2)))
                 (error "Context expects 2 values" _g95137_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target9463194652_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g95136_
                                                             0)))
                                                         (_tl9463394655_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g95136_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl9463394655_))
                                                         (letrec ((_loop9463494658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd9463294662_ _clause9463894665_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd9463294662_))
                                 (let ((_e9463594668_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd9463294662_))))
                                   (let ((_lp-hd9463694672_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9463594668_)))
                                         (_lp-tl9463794675_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9463594668_))))
                                     (_loop9463494658_
                                      _lp-tl9463794675_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd9463694672_
                                              _clause9463894665_)))))
                                 (let ((_clause9463994678_
                                        (reverse _clause9463894665_)))
                                   ((lambda (_L94682_)
                                      (let ()
                                        (let ((__tmp95149
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp95138
                                               (let ((__tmp95147
                                                      (let ((__tmp95148
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp95148 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp95139
                                                      (let ((__tmp95140
                                                             (let ((__tmp95146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp95141
                            (let ((__tmp95145
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp95142
                                   (let ((__tmp95143
                                          (let ((__tmp95144
                                                 (lambda (_g9469794700_
                                                          _g9469894703_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g9469794700_
                                                           _g9469894703_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp95144 '() _L94682_))))
                                     (declare (not safe))
                                     (cons _L94609_ __tmp95143))))
                              (declare (not safe))
                              (cons __tmp95145 __tmp95142))))
                       (declare (not safe))
                       (cons __tmp95146 __tmp95141))))
                (declare (not safe))
                (cons __tmp95140 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp95147
                                                       __tmp95139))))
                                          (declare (not safe))
                                          (cons __tmp95149 __tmp95138))))
                                    _clause9463994678_))))))
                   (_loop9463494658_ _target9463194652_ '()))
                 (_g9462894645_ _g9462994649_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9462894645_
                                                _g9462994649_)))))
                                   (_g9462794706_
                                    (let ((__tmp95152
                                           (lambda (_clause94710_)
                                             (let* ((___stx9507995080_
                                                     _clause94710_)
                                                    (_g9471494741_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          ___stx9507995080_)))))
                                               (let ((___kont9508295083_
                                                      (lambda (_L94826_
                                                               _L94828_)
                                                        (let ((__tmp95153
                                                               (let ((__tmp95154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp95156
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp95155
                                     (let ()
                                       (declare (not safe))
                                       (cons _L94826_ '()))))
                                (declare (not safe))
                                (cons __tmp95156 __tmp95155))))
                         (declare (not safe))
                         (cons __tmp95154 '()))))
                  (declare (not safe))
                  (cons _L94828_ __tmp95153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont9508495085_
                                                      (lambda (_L94778_
                                                               _L94780_
                                                               _L94781_)
                                                        (let ((__tmp95157
                                                               (let ((__tmp95158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp95159
                                     (let ((__tmp95161
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp95160
                                            (let ()
                                              (declare (not safe))
                                              (cons _L94778_ '()))))
                                       (declare (not safe))
                                       (cons __tmp95161 __tmp95160))))
                                (declare (not safe))
                                (cons __tmp95159 '()))))
                         (declare (not safe))
                         (cons _L94780_ __tmp95158))))
                  (declare (not safe))
                  (cons _L94781_ __tmp95157)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx9507995080_))
                                                     (let ((_e9471894806_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx9507995080_))))
                                                       (let ((_tl9472094813_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e9471894806_)))
                     (_hd9471994810_
                      (let () (declare (not safe)) (##car _e9471894806_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl9472094813_))
                     (let ((_e9472194816_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl9472094813_))))
                       (let ((_tl9472394823_
                              (let ()
                                (declare (not safe))
                                (##cdr _e9472194816_)))
                             (_hd9472294820_
                              (let ()
                                (declare (not safe))
                                (##car _e9472194816_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl9472394823_))
                             (___kont9508295083_ _hd9472294820_ _hd9471994810_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl9472394823_))
                                 (let ((_e9473394768_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl9472394823_))))
                                   (let ((_tl9473594775_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e9473394768_)))
                                         (_hd9473494772_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e9473394768_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl9473594775_))
                                         (___kont9508495085_
                                          _hd9473494772_
                                          _hd9472294820_
                                          _hd9471994810_)
                                         (let ()
                                           (declare (not safe))
                                           (_g9471494741_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g9471494741_))))))
                     (let () (declare (not safe)) (_g9471494741_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g9471494741_)))))))
                                          (__tmp95150
                                           (let ((__tmp95151
                                                  (lambda (_g9484494847_
                                                           _g9484594850_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g9484494847_
                                                            _g9484594850_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp95151
                                                     '()
                                                     _L94607_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp95152 __tmp95150))))
                                 (_g9452694550_ _g9452794554_)))
                           _clause9454494603_
                           _hd9453494571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop9453994583_
                                                   _target9453694577_
                                                   '()))
                                                (_g9452694550_
                                                 _g9452794554_)))))
                                      (_g9452694550_ _g9452794554_))))
                              (_g9452694550_ _g9452794554_))))
                      (_g9452694550_ _g9452794554_)))))
          (_g9452594853_ _stx94523_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj95122
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj95122
           'gxc#symbol-table::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj95122
           'symbol-table
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj95122
           '(gensyms bindings)
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj95122
           '()
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj95122
           '#t
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj95122
           '#f
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj95122
           '#f
           '7
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj95122
           ':init!
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp95162 |gxc[1]#_g95163_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj95122
           __tmp95162
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp95164 |gxc[1]#_g95165_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj95122
           __tmp95164
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp95166 |gxc[1]#_g95167_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj95122
           __tmp95166
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp95168
               (let ((__tmp95173
                      (let ((__tmp95174 |gxc[1]#_g95175_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp95174)))
                     (__tmp95169
                      (let ((__tmp95170
                             (let ((__tmp95171 |gxc[1]#_g95172_|))
                               (declare (not safe))
                               (cons 'bindings __tmp95171))))
                        (declare (not safe))
                        (cons __tmp95170 '()))))
                 (declare (not safe))
                 (cons __tmp95173 __tmp95169))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj95122
           __tmp95168
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp95176
               (let ((__tmp95181
                      (let ((__tmp95182 |gxc[1]#_g95183_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp95182)))
                     (__tmp95177
                      (let ((__tmp95178
                             (let ((__tmp95179 |gxc[1]#_g95180_|))
                               (declare (not safe))
                               (cons 'bindings __tmp95179))))
                        (declare (not safe))
                        (cons __tmp95178 '()))))
                 (declare (not safe))
                 (cons __tmp95181 __tmp95177))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj95122
           __tmp95176
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp95184
               (let ((__tmp95189
                      (let ((__tmp95190 |gxc[1]#_g95191_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp95190)))
                     (__tmp95185
                      (let ((__tmp95186
                             (let ((__tmp95187 |gxc[1]#_g95188_|))
                               (declare (not safe))
                               (cons 'bindings __tmp95187))))
                        (declare (not safe))
                        (cons __tmp95186 '()))))
                 (declare (not safe))
                 (cons __tmp95189 __tmp95185))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj95122
           __tmp95184
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp95192
               (let ((__tmp95197
                      (let ((__tmp95198 |gxc[1]#_g95199_|))
                        (declare (not safe))
                        (cons 'gensyms __tmp95198)))
                     (__tmp95193
                      (let ((__tmp95194
                             (let ((__tmp95195 |gxc[1]#_g95196_|))
                               (declare (not safe))
                               (cons 'bindings __tmp95195))))
                        (declare (not safe))
                        (cons __tmp95194 '()))))
                 (declare (not safe))
                 (cons __tmp95197 __tmp95193))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj95122
           __tmp95192
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj95122))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_$stx94859_)
        (let* ((_g9486394877_
                (lambda (_g9486494873_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9486494873_))))
               (_g9486294918_
                (lambda (_g9486494881_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g9486494881_))
                      (let ((_e9486694884_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g9486494881_))))
                        (let ((_hd9486794888_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9486694884_)))
                              (_tl9486894891_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9486694884_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl9486894891_))
                              (let ((_e9486994894_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl9486894891_))))
                                (let ((_hd9487094898_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e9486994894_)))
                                      (_tl9487194901_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e9486994894_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl9487194901_))
                                      ((lambda (_L94904_)
                                         (let ((__tmp95207
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'with-lock)))
                                               (__tmp95200
                                                (let ((__tmp95206
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '+verbose-mutex+)))
                                                      (__tmp95201
                                                       (let ((__tmp95202
                                                              (let ((__tmp95205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'lambda)))
                            (__tmp95203
                             (let ((__tmp95204
                                    (let ()
                                      (declare (not safe))
                                      (cons _L94904_ '()))))
                               (declare (not safe))
                               (cons '() __tmp95204))))
                        (declare (not safe))
                        (cons __tmp95205 __tmp95203))))
                 (declare (not safe))
                 (cons __tmp95202 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp95206
                                                        __tmp95201))))
                                           (declare (not safe))
                                           (cons __tmp95207 __tmp95200)))
                                       _hd9487094898_)
                                      (_g9486394877_ _g9486494881_))))
                              (_g9486394877_ _g9486494881_))))
                      (_g9486394877_ _g9486494881_)))))
          (_g9486294918_ _$stx94859_))))))
