(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx83318_)
    (let* ((_g8332283348_
            (lambda (_g8332383344_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g8332383344_)))
           (_g8332183432_
            (lambda (_g8332383352_)
              (if (gx#stx-pair? _g8332383352_)
                  (let ((_e8333083355_ (gx#syntax-e _g8332383352_)))
                    (let ((_hd8332983359_
                           (let () (declare (not safe)) (##car _e8333083355_)))
                          (_tl8332883362_
                           (let ()
                             (declare (not safe))
                             (##cdr _e8333083355_))))
                      (if (gx#stx-pair? _tl8332883362_)
                          (let ((_e8333383365_ (gx#syntax-e _tl8332883362_)))
                            (let ((_hd8333283369_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e8333383365_)))
                                  (_tl8333183372_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e8333383365_))))
                              (if (gx#stx-pair? _tl8333183372_)
                                  (let ((_e8333683375_
                                         (gx#syntax-e _tl8333183372_)))
                                    (let ((_hd8333583379_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e8333683375_)))
                                          (_tl8333483382_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e8333683375_))))
                                      (if (gx#stx-pair? _tl8333483382_)
                                          (let ((_e8333983385_
                                                 (gx#syntax-e _tl8333483382_)))
                                            (let ((_hd8333883389_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e8333983385_)))
                                                  (_tl8333783392_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e8333983385_))))
                                              (if (gx#stx-pair? _tl8333783392_)
                                                  (let ((_e8334283395_
                                                         (gx#syntax-e
                                                          _tl8333783392_)))
                                                    (let ((_hd8334183399_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e8334283395_)))
                                                          (_tl8334083402_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e8334283395_))))
                                                      (if (gx#stx-null?
                                                           _tl8334083402_)
                                                          ((lambda (_L83405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L83407_
                            _L83408_
                            _L83409_)
                     (let ((__tmp89207 (gx#datum->syntax '#f 'if))
                           (__tmp89161
                            (let ((__tmp89204
                                   (let ((__tmp89206
                                          (gx#datum->syntax '#f 'object?))
                                         (__tmp89205
                                          (let ()
                                            (declare (not safe))
                                            (cons _L83409_ '()))))
                                     (declare (not safe))
                                     (cons __tmp89206 __tmp89205)))
                                  (__tmp89162
                                   (let ((__tmp89167
                                          (let ((__tmp89203
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp89168
                                                 (let ((__tmp89197
                                                        (let ((__tmp89202
                                                               (gx#datum->syntax
                                                                '#f
                                                                'klass))
                                                              (__tmp89198
                                                               (let ((__tmp89199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp89201
                                     (gx#datum->syntax '#f 'object-type))
                                    (__tmp89200
                                     (let ()
                                       (declare (not safe))
                                       (cons _L83409_ '()))))
                                (declare (not safe))
                                (cons __tmp89201 __tmp89200))))
                         (declare (not safe))
                         (cons __tmp89199 '()))))
                  (declare (not safe))
                  (cons __tmp89202 __tmp89198)))
               (__tmp89169
                (let ((__tmp89170
                       (let ((__tmp89196 (gx#datum->syntax '#f 'cond))
                             (__tmp89171
                              (let ((__tmp89179
                                     (let ((__tmp89183
                                            (let ((__tmp89195
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp89184
                                                   (let ((__tmp89191
                                                          (let ((__tmp89194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'type-descriptor?))
                        (__tmp89192
                         (let ((__tmp89193 (gx#datum->syntax '#f 'klass)))
                           (declare (not safe))
                           (cons __tmp89193 '()))))
                    (declare (not safe))
                    (cons __tmp89194 __tmp89192)))
                 (__tmp89185
                  (let ((__tmp89186
                         (let ((__tmp89190
                                (gx#datum->syntax '#f 'class-slot-offset))
                               (__tmp89187
                                (let ((__tmp89189
                                       (gx#datum->syntax '#f 'klass))
                                      (__tmp89188
                                       (let ()
                                         (declare (not safe))
                                         (cons _L83408_ '()))))
                                  (declare (not safe))
                                  (cons __tmp89189 __tmp89188))))
                           (declare (not safe))
                           (cons __tmp89190 __tmp89187))))
                    (declare (not safe))
                    (cons __tmp89186 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89191
                                                           __tmp89185))))
                                              (declare (not safe))
                                              (cons __tmp89195 __tmp89184)))
                                           (__tmp89180
                                            (let ((__tmp89182
                                                   (gx#datum->syntax '#f '=>))
                                                  (__tmp89181
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L83407_ '()))))
                                              (declare (not safe))
                                              (cons __tmp89182 __tmp89181))))
                                       (declare (not safe))
                                       (cons __tmp89183 __tmp89180)))
                                    (__tmp89172
                                     (let ((__tmp89173
                                            (let ((__tmp89178
                                                   (gx#datum->syntax
                                                    '#f
                                                    'else))
                                                  (__tmp89174
                                                   (let ((__tmp89175
                                                          (let ((__tmp89176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp89177
                                (let ()
                                  (declare (not safe))
                                  (cons _L83408_ '()))))
                           (declare (not safe))
                           (cons _L83409_ __tmp89177))))
                    (declare (not safe))
                    (cons _L83405_ __tmp89176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp89175 '()))))
                                              (declare (not safe))
                                              (cons __tmp89178 __tmp89174))))
                                       (declare (not safe))
                                       (cons __tmp89173 '()))))
                                (declare (not safe))
                                (cons __tmp89179 __tmp89172))))
                         (declare (not safe))
                         (cons __tmp89196 __tmp89171))))
                  (declare (not safe))
                  (cons __tmp89170 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp89197
                                                         __tmp89169))))
                                            (declare (not safe))
                                            (cons __tmp89203 __tmp89168)))
                                         (__tmp89163
                                          (let ((__tmp89164
                                                 (let ((__tmp89165
                                                        (let ((__tmp89166
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L83408_ '()))))
                  (declare (not safe))
                  (cons _L83409_ __tmp89166))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L83405_
                                                         __tmp89165))))
                                            (declare (not safe))
                                            (cons __tmp89164 '()))))
                                     (declare (not safe))
                                     (cons __tmp89167 __tmp89163))))
                              (declare (not safe))
                              (cons __tmp89204 __tmp89162))))
                       (declare (not safe))
                       (cons __tmp89207 __tmp89161)))
                   _hd8334183399_
                   _hd8333883389_
                   _hd8333583379_
                   _hd8333283369_)
                  (_g8332283348_ _g8332383352_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g8332283348_
                                                   _g8332383352_))))
                                          (_g8332283348_ _g8332383352_))))
                                  (_g8332283348_ _g8332383352_))))
                          (_g8332283348_ _g8332383352_))))
                  (_g8332283348_ _g8332383352_)))))
      (_g8332183432_ _$stx83318_))))
