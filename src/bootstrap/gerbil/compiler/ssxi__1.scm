(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx157625_)
      (let* ((_g157629157647_
              (lambda (_g157630157643_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157630157643_))))
             (_g157628157702_
              (lambda (_g157630157651_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157630157651_))
                    (let ((_e157633157654_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157630157651_))))
                      (let ((_hd157634157658_
                             (let ()
                               (declare (not safe))
                               (##car _e157633157654_)))
                            (_tl157635157661_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157633157654_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157635157661_))
                            (let ((_e157636157664_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157635157661_))))
                              (let ((_hd157637157668_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157636157664_)))
                                    (_tl157638157671_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157636157664_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl157638157671_))
                                    (let ((_e157639157674_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl157638157671_))))
                                      (let ((_hd157640157678_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157639157674_)))
                                            (_tl157641157681_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157639157674_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157641157681_))
                                            ((lambda (_L157684_ _L157686_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L157686_))
                                                   (let ((__tmp161184
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp161179
                                                          (let ((__tmp161181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp161183
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp161182
                                (let ()
                                  (declare (not safe))
                                  (cons _L157686_ '()))))
                           (declare (not safe))
                           (cons __tmp161183 __tmp161182)))
                        (__tmp161180
                         (let () (declare (not safe)) (cons _L157684_ '()))))
                    (declare (not safe))
                    (cons __tmp161181 __tmp161180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp161184
                                                           __tmp161179))
                                                   (_g157629157647_
                                                    _g157630157651_)))
                                             _hd157640157678_
                                             _hd157637157668_)
                                            (_g157629157647_
                                             _g157630157651_))))
                                    (_g157629157647_ _g157630157651_))))
                            (_g157629157647_ _g157630157651_))))
                    (_g157629157647_ _g157630157651_)))))
        (_g157628157702_ _$stx157625_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx157706_)
      (let* ((_g157710157739_
              (lambda (_g157711157735_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157711157735_))))
             (_g157709157839_
              (lambda (_g157711157743_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157711157743_))
                    (let ((_e157714157746_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157711157743_))))
                      (let ((_hd157715157750_
                             (let ()
                               (declare (not safe))
                               (##car _e157714157746_)))
                            (_tl157716157753_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157714157746_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl157716157753_))
                            (let ((_g161185_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl157716157753_
                                      '0))))
                              (begin
                                (let ((_g161186_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161185_)
                                             (##vector-length _g161185_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161186_ 2)))
                                      (error "Context expects 2 values"
                                             _g161186_)))
                                (let ((_target157717157756_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161185_ 0)))
                                      (_tl157719157759_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161185_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl157719157759_))
                                      (letrec ((_loop157720157762_
                                                (lambda (_hd157718157766_
                                                         _type157724157769_
                                                         _symbol157725157771_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd157718157766_))
                                                      (let ((_e157721157774_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd157718157766_))))
                (let ((_lp-hd157722157778_
                       (let () (declare (not safe)) (##car _e157721157774_)))
                      (_lp-tl157723157781_
                       (let () (declare (not safe)) (##cdr _e157721157774_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd157722157778_))
                      (let ((_e157728157784_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd157722157778_))))
                        (let ((_hd157729157788_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157728157784_)))
                              (_tl157730157791_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157728157784_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl157730157791_))
                              (let ((_e157731157794_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl157730157791_))))
                                (let ((_hd157732157798_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157731157794_)))
                                      (_tl157733157801_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157731157794_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl157733157801_))
                                      (_loop157720157762_
                                       _lp-tl157723157781_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd157732157798_
                                               _type157724157769_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd157729157788_
                                               _symbol157725157771_)))
                                      (_g157710157739_ _g157711157743_))))
                              (_g157710157739_ _g157711157743_))))
                      (_g157710157739_ _g157711157743_))))
              (let ((_type157726157804_ (reverse _type157724157769_))
                    (_symbol157727157807_ (reverse _symbol157725157771_)))
                ((lambda (_L157810_ _L157812_)
                   (let ((__tmp161193
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161187
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L157810_
                               _L157812_))
                            (let ((__tmp161188
                                   (lambda (_g157827157831_
                                            _g157828157834_
                                            _g157829157836_)
                                     (let ((__tmp161189
                                            (let ((__tmp161192
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp161190
                                                   (let ((__tmp161191
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g157827157831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g157828157834_
                                                           __tmp161191))))
                                              (declare (not safe))
                                              (cons __tmp161192 __tmp161190))))
                                       (declare (not safe))
                                       (cons __tmp161189 _g157829157836_)))))
                              (declare (not safe))
                              (foldr2 __tmp161188 '() _L157810_ _L157812_)))))
                     (declare (not safe))
                     (cons __tmp161193 __tmp161187)))
                 _type157726157804_
                 _symbol157727157807_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop157720157762_
                                         _target157717157756_
                                         '()
                                         '()))
                                      (_g157710157739_ _g157711157743_)))))
                            (_g157710157739_ _g157711157743_))))
                    (_g157710157739_ _g157711157743_)))))
        (_g157709157839_ _$stx157706_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx157844_)
      (let* ((___stx160744160745_ _$stx157844_)
             (_g157849157891_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx160744160745_)))))
        (let ((___kont160747160748_
               (lambda (_L158019_ _L158021_ _L158022_ _L158023_)
                 (let ((__tmp161207
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp161194
                        (let ((__tmp161204
                               (let ((__tmp161206
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161205
                                      (let ()
                                        (declare (not safe))
                                        (cons _L158023_ '()))))
                                 (declare (not safe))
                                 (cons __tmp161206 __tmp161205)))
                              (__tmp161195
                               (let ((__tmp161201
                                      (let ((__tmp161203
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161202
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158022_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161203 __tmp161202)))
                                     (__tmp161196
                                      (let ((__tmp161198
                                             (let ((__tmp161200
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161199
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158021_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161200 __tmp161199)))
                                            (__tmp161197
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158019_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161198 __tmp161197))))
                                 (declare (not safe))
                                 (cons __tmp161201 __tmp161196))))
                          (declare (not safe))
                          (cons __tmp161204 __tmp161195))))
                   (declare (not safe))
                   (cons __tmp161207 __tmp161194))))
              (___kont160749160750_
               (lambda (_L157938_ _L157940_ _L157941_ _L157942_)
                 (let ((__tmp161208
                        (let ((__tmp161209
                               (let ((__tmp161210
                                      (let ((__tmp161211
                                             (let ((__tmp161212
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp161212 '()))))
                                        (declare (not safe))
                                        (cons _L157938_ __tmp161211))))
                                 (declare (not safe))
                                 (cons _L157940_ __tmp161210))))
                          (declare (not safe))
                          (cons _L157941_ __tmp161209))))
                   (declare (not safe))
                   (cons _L157942_ __tmp161208)))))
          (let ((___match160783160784_
                 (lambda (_e157855157969_
                          _hd157856157973_
                          _tl157857157976_
                          _e157858157979_
                          _hd157859157983_
                          _tl157860157986_
                          _e157861157989_
                          _hd157862157993_
                          _tl157863157996_
                          _e157864157999_
                          _hd157865158003_
                          _tl157866158006_
                          _e157867158009_
                          _hd157868158013_
                          _tl157869158016_)
                   (let ((_L158019_ _hd157868158013_)
                         (_L158021_ _hd157865158003_)
                         (_L158022_ _hd157862157993_)
                         (_L158023_ _hd157859157983_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L158023_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158022_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158021_)))
                         (___kont160747160748_
                          _L158019_
                          _L158021_
                          _L158022_
                          _L158023_)
                         (let () (declare (not safe)) (_g157849157891_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx160744160745_))
                (let ((_e157855157969_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx160744160745_))))
                  (let ((_tl157857157976_
                         (let () (declare (not safe)) (##cdr _e157855157969_)))
                        (_hd157856157973_
                         (let ()
                           (declare (not safe))
                           (##car _e157855157969_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl157857157976_))
                        (let ((_e157858157979_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl157857157976_))))
                          (let ((_tl157860157986_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e157858157979_)))
                                (_hd157859157983_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e157858157979_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl157860157986_))
                                (let ((_e157861157989_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl157860157986_))))
                                  (let ((_tl157863157996_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e157861157989_)))
                                        (_hd157862157993_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e157861157989_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl157863157996_))
                                        (let ((_e157864157999_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl157863157996_))))
                                          (let ((_tl157866158006_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e157864157999_)))
                                                (_hd157865158003_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e157864157999_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl157866158006_))
                                                (let ((_e157867158009_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl157866158006_))))
                                                  (let ((_tl157869158016_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e157867158009_)))
                                                        (_hd157868158013_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e157867158009_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl157869158016_))
                                                        (___match160783160784_
                                                         _e157855157969_
                                                         _hd157856157973_
                                                         _tl157857157976_
                                                         _e157858157979_
                                                         _hd157859157983_
                                                         _tl157860157986_
                                                         _e157861157989_
                                                         _hd157862157993_
                                                         _tl157863157996_
                                                         _e157864157999_
                                                         _hd157865158003_
                                                         _tl157866158006_
                                                         _e157867158009_
                                                         _hd157868158013_
                                                         _tl157869158016_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g157849157891_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl157866158006_))
                                                    (___kont160749160750_
                                                     _hd157865158003_
                                                     _hd157862157993_
                                                     _hd157859157983_
                                                     _hd157856157973_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g157849157891_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g157849157891_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g157849157891_)))))
                        (let () (declare (not safe)) (_g157849157891_)))))
                (let () (declare (not safe)) (_g157849157891_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx158048_)
      (let* ((_g158052158087_
              (lambda (_g158053158083_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158053158083_))))
             (_g158051158206_
              (lambda (_g158053158091_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158053158091_))
                    (let ((_e158057158094_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158053158091_))))
                      (let ((_hd158058158098_
                             (let ()
                               (declare (not safe))
                               (##car _e158057158094_)))
                            (_tl158059158101_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158057158094_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158059158101_))
                            (let ((_g161213_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158059158101_
                                      '0))))
                              (begin
                                (let ((_g161214_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161213_)
                                             (##vector-length _g161213_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161214_ 2)))
                                      (error "Context expects 2 values"
                                             _g161214_)))
                                (let ((_target158060158104_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161213_ 0)))
                                      (_tl158062158107_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161213_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158062158107_))
                                      (letrec ((_loop158063158110_
                                                (lambda (_hd158061158114_
                                                         _symbol158067158117_
                                                         _method158068158119_
                                                         _type-t158069158121_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158061158114_))
                                                      (let ((_e158064158124_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158061158114_))))
                (let ((_lp-hd158065158128_
                       (let () (declare (not safe)) (##car _e158064158124_)))
                      (_lp-tl158066158131_
                       (let () (declare (not safe)) (##cdr _e158064158124_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158065158128_))
                      (let ((_e158073158134_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158065158128_))))
                        (let ((_hd158074158138_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158073158134_)))
                              (_tl158075158141_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158073158134_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158075158141_))
                              (let ((_e158076158144_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158075158141_))))
                                (let ((_hd158077158148_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158076158144_)))
                                      (_tl158078158151_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158076158144_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158078158151_))
                                      (let ((_e158079158154_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158078158151_))))
                                        (let ((_hd158080158158_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158079158154_)))
                                              (_tl158081158161_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158079158154_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158081158161_))
                                              (_loop158063158110_
                                               _lp-tl158066158131_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158080158158_
                                                       _symbol158067158117_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158077158148_
                                                       _method158068158119_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158074158138_
                                                       _type-t158069158121_)))
                                              (_g158052158087_
                                               _g158053158091_))))
                                      (_g158052158087_ _g158053158091_))))
                              (_g158052158087_ _g158053158091_))))
                      (_g158052158087_ _g158053158091_))))
              (let ((_symbol158070158164_ (reverse _symbol158067158117_))
                    (_method158071158167_ (reverse _method158068158119_))
                    (_type-t158072158169_ (reverse _type-t158069158121_)))
                ((lambda (_L158172_ _L158174_ _L158175_)
                   (let ((__tmp161222
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161215
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158172_
                               _L158174_
                               _L158175_))
                            (let ((__tmp161216
                                   (lambda (_g158191158196_
                                            _g158192158199_
                                            _g158193158201_
                                            _g158194158203_)
                                     (let ((__tmp161217
                                            (let ((__tmp161221
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp161218
                                                   (let ((__tmp161219
                                                          (let ((__tmp161220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g158191158196_ '()))))
                    (declare (not safe))
                    (cons _g158192158199_ __tmp161220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158193158201_
                                                           __tmp161219))))
                                              (declare (not safe))
                                              (cons __tmp161221 __tmp161218))))
                                       (declare (not safe))
                                       (cons __tmp161217 _g158194158203_)))))
                              (declare (not safe))
                              (foldr* __tmp161216
                                      '()
                                      _L158172_
                                      _L158174_
                                      _L158175_)))))
                     (declare (not safe))
                     (cons __tmp161222 __tmp161215)))
                 _symbol158070158164_
                 _method158071158167_
                 _type-t158072158169_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158063158110_
                                         _target158060158104_
                                         '()
                                         '()
                                         '()))
                                      (_g158052158087_ _g158053158091_)))))
                            (_g158052158087_ _g158053158091_))))
                    (_g158052158087_ _g158053158091_)))))
        (_g158051158206_ _$stx158048_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx158211_)
      (let* ((_g158215158248_
              (lambda (_g158216158244_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158216158244_))))
             (_g158214158362_
              (lambda (_g158216158252_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158216158252_))
                    (let ((_e158220158255_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158216158252_))))
                      (let ((_hd158221158259_
                             (let ()
                               (declare (not safe))
                               (##car _e158220158255_)))
                            (_tl158222158262_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158220158255_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158222158262_))
                            (let ((_e158223158265_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158222158262_))))
                              (let ((_hd158224158269_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158223158265_)))
                                    (_tl158225158272_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158223158265_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl158225158272_))
                                    (let ((_g161223_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl158225158272_
                                              '0))))
                                      (begin
                                        (let ((_g161224_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g161223_)
                                                     (##vector-length
                                                      _g161223_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g161224_ 2)))
                                              (error "Context expects 2 values"
                                                     _g161224_)))
                                        (let ((_target158226158275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161223_ 0)))
                                              (_tl158228158278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161223_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158228158278_))
                                              (letrec ((_loop158229158281_
                                                        (lambda (_hd158227158285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol158233158288_
                         _method158234158290_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd158227158285_))
                      (let ((_e158230158293_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd158227158285_))))
                        (let ((_lp-hd158231158297_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158230158293_)))
                              (_lp-tl158232158300_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158230158293_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd158231158297_))
                              (let ((_e158237158303_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd158231158297_))))
                                (let ((_hd158238158307_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158237158303_)))
                                      (_tl158239158310_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158237158303_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158239158310_))
                                      (let ((_e158240158313_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158239158310_))))
                                        (let ((_hd158241158317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158240158313_)))
                                              (_tl158242158320_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158240158313_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158242158320_))
                                              (_loop158229158281_
                                               _lp-tl158232158300_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158241158317_
                                                       _symbol158233158288_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158238158307_
                                                       _method158234158290_)))
                                              (_g158215158248_
                                               _g158216158252_))))
                                      (_g158215158248_ _g158216158252_))))
                              (_g158215158248_ _g158216158252_))))
                      (let ((_symbol158235158323_
                             (reverse _symbol158233158288_))
                            (_method158236158326_
                             (reverse _method158234158290_)))
                        ((lambda (_L158329_ _L158331_ _L158332_)
                           (let ((__tmp161232
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp161225
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L158329_
                                       _L158331_))
                                    (let ((__tmp161226
                                           (lambda (_g158350158354_
                                                    _g158351158357_
                                                    _g158352158359_)
                                             (let ((__tmp161227
                                                    (let ((__tmp161231
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp161228
                                                           (let ((__tmp161229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp161230
                                 (let ()
                                   (declare (not safe))
                                   (cons _g158350158354_ '()))))
                            (declare (not safe))
                            (cons _g158351158357_ __tmp161230))))
                     (declare (not safe))
                     (cons _L158332_ __tmp161229))))
              (declare (not safe))
              (cons __tmp161231 __tmp161228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161227
                                                     _g158352158359_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp161226
                                              '()
                                              _L158329_
                                              _L158331_)))))
                             (declare (not safe))
                             (cons __tmp161232 __tmp161225)))
                         _symbol158235158323_
                         _method158236158326_
                         _hd158224158269_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop158229158281_
                                                 _target158226158275_
                                                 '()
                                                 '()))
                                              (_g158215158248_
                                               _g158216158252_)))))
                                    (_g158215158248_ _g158216158252_))))
                            (_g158215158248_ _g158216158252_))))
                    (_g158215158248_ _g158216158252_)))))
        (_g158214158362_ _$stx158211_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx158367_)
      (let* ((_g158371158385_
              (lambda (_g158372158381_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158372158381_))))
             (_g158370158426_
              (lambda (_g158372158389_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158372158389_))
                    (let ((_e158374158392_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158372158389_))))
                      (let ((_hd158375158396_
                             (let ()
                               (declare (not safe))
                               (##car _e158374158392_)))
                            (_tl158376158399_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158374158392_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158376158399_))
                            (let ((_e158377158402_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158376158399_))))
                              (let ((_hd158378158406_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158377158402_)))
                                    (_tl158379158409_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158377158402_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158379158409_))
                                    ((lambda (_L158412_)
                                       (let ((__tmp161237
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp161233
                                              (let ((__tmp161234
                                                     (let ((__tmp161236
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161235
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161236 __tmp161235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161234 '()))))
                                         (declare (not safe))
                                         (cons __tmp161237 __tmp161233)))
                                     _hd158378158406_)
                                    (_g158371158385_ _g158372158389_))))
                            (_g158371158385_ _g158372158389_))))
                    (_g158371158385_ _g158372158389_)))))
        (_g158370158426_ _$stx158367_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx158430_)
      (let* ((_g158434158488_
              (lambda (_g158435158484_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158435158484_))))
             (_g158433158669_
              (lambda (_g158435158492_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158435158492_))
                    (let ((_e158447158495_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158435158492_))))
                      (let ((_hd158448158499_
                             (let ()
                               (declare (not safe))
                               (##car _e158447158495_)))
                            (_tl158449158502_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158447158495_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158449158502_))
                            (let ((_e158450158505_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158449158502_))))
                              (let ((_hd158451158509_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158450158505_)))
                                    (_tl158452158512_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158450158505_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158452158512_))
                                    (let ((_e158453158515_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158452158512_))))
                                      (let ((_hd158454158519_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158453158515_)))
                                            (_tl158455158522_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158453158515_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158455158522_))
                                            (let ((_e158456158525_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158455158522_))))
                                              (let ((_hd158457158529_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158456158525_)))
                                                    (_tl158458158532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158456158525_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158458158532_))
                                                    (let ((_e158459158535_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158458158532_))))
                                                      (let ((_hd158460158539_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158459158535_)))
                    (_tl158461158542_
                     (let () (declare (not safe)) (##cdr _e158459158535_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158461158542_))
                    (let ((_e158462158545_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158461158542_))))
                      (let ((_hd158463158549_
                             (let ()
                               (declare (not safe))
                               (##car _e158462158545_)))
                            (_tl158464158552_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158462158545_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158464158552_))
                            (let ((_e158465158555_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158464158552_))))
                              (let ((_hd158466158559_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158465158555_)))
                                    (_tl158467158562_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158465158555_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158467158562_))
                                    (let ((_e158468158565_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158467158562_))))
                                      (let ((_hd158469158569_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158468158565_)))
                                            (_tl158470158572_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158468158565_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158470158572_))
                                            (let ((_e158471158575_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158470158572_))))
                                              (let ((_hd158472158579_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158471158575_)))
                                                    (_tl158473158582_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158471158575_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158473158582_))
                                                    (let ((_e158474158585_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158473158582_))))
                                                      (let ((_hd158475158589_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158474158585_)))
                    (_tl158476158592_
                     (let () (declare (not safe)) (##cdr _e158474158585_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158476158592_))
                    (let ((_e158477158595_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158476158592_))))
                      (let ((_hd158478158599_
                             (let ()
                               (declare (not safe))
                               (##car _e158477158595_)))
                            (_tl158479158602_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158477158595_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158479158602_))
                            (let ((_e158480158605_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158479158602_))))
                              (let ((_hd158481158609_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158480158605_)))
                                    (_tl158482158612_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158480158605_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158482158612_))
                                    ((lambda (_L158615_
                                              _L158617_
                                              _L158618_
                                              _L158619_
                                              _L158620_
                                              _L158621_
                                              _L158622_
                                              _L158623_
                                              _L158624_
                                              _L158625_
                                              _L158626_)
                                       (let ((__tmp161273
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class)))
                                             (__tmp161238
                                              (let ((__tmp161270
                                                     (let ((__tmp161272
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161271
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161272 __tmp161271)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp161239
                                                     (let ((__tmp161267
                                                            (let ((__tmp161269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote)))
                          (__tmp161268
                           (let () (declare (not safe)) (cons _L158625_ '()))))
                      (declare (not safe))
                      (cons __tmp161269 __tmp161268)))
                   (__tmp161240
                    (let ((__tmp161264
                           (let ((__tmp161266
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote)))
                                 (__tmp161265
                                  (let ()
                                    (declare (not safe))
                                    (cons _L158624_ '()))))
                             (declare (not safe))
                             (cons __tmp161266 __tmp161265)))
                          (__tmp161241
                           (let ((__tmp161261
                                  (let ((__tmp161263
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp161262
                                         (let ()
                                           (declare (not safe))
                                           (cons _L158623_ '()))))
                                    (declare (not safe))
                                    (cons __tmp161263 __tmp161262)))
                                 (__tmp161242
                                  (let ((__tmp161258
                                         (let ((__tmp161260
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote)))
                                               (__tmp161259
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L158622_ '()))))
                                           (declare (not safe))
                                           (cons __tmp161260 __tmp161259)))
                                        (__tmp161243
                                         (let ((__tmp161255
                                                (let ((__tmp161257
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'quote)))
                                                      (__tmp161256
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L158621_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp161257
                                                        __tmp161256)))
                                               (__tmp161244
                                                (let ((__tmp161245
                                                       (let ((__tmp161246
                                                              (let ((__tmp161247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp161252
                                    (let ((__tmp161254
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161253
                                           (let ()
                                             (declare (not safe))
                                             (cons _L158617_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161254 __tmp161253)))
                                   (__tmp161248
                                    (let ((__tmp161249
                                           (let ((__tmp161251
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'quote)))
                                                 (__tmp161250
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L158615_ '()))))
                                             (declare (not safe))
                                             (cons __tmp161251 __tmp161250))))
                                      (declare (not safe))
                                      (cons __tmp161249 '()))))
                               (declare (not safe))
                               (cons __tmp161252 __tmp161248))))
                        (declare (not safe))
                        (cons _L158618_ __tmp161247))))
                 (declare (not safe))
                 (cons _L158619_ __tmp161246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L158620_
                                                        __tmp161245))))
                                           (declare (not safe))
                                           (cons __tmp161255 __tmp161244))))
                                    (declare (not safe))
                                    (cons __tmp161258 __tmp161243))))
                             (declare (not safe))
                             (cons __tmp161261 __tmp161242))))
                      (declare (not safe))
                      (cons __tmp161264 __tmp161241))))
               (declare (not safe))
               (cons __tmp161267 __tmp161240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161270
                                                      __tmp161239))))
                                         (declare (not safe))
                                         (cons __tmp161273 __tmp161238)))
                                     _hd158481158609_
                                     _hd158478158599_
                                     _hd158475158589_
                                     _hd158472158579_
                                     _hd158469158569_
                                     _hd158466158559_
                                     _hd158463158549_
                                     _hd158460158539_
                                     _hd158457158529_
                                     _hd158454158519_
                                     _hd158451158509_)
                                    (_g158434158488_ _g158435158492_))))
                            (_g158434158488_ _g158435158492_))))
                    (_g158434158488_ _g158435158492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158434158488_
                                                     _g158435158492_))))
                                            (_g158434158488_
                                             _g158435158492_))))
                                    (_g158434158488_ _g158435158492_))))
                            (_g158434158488_ _g158435158492_))))
                    (_g158434158488_ _g158435158492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158434158488_
                                                     _g158435158492_))))
                                            (_g158434158488_
                                             _g158435158492_))))
                                    (_g158434158488_ _g158435158492_))))
                            (_g158434158488_ _g158435158492_))))
                    (_g158434158488_ _g158435158492_)))))
        (_g158433158669_ _$stx158430_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx158673_)
      (let* ((_g158677158691_
              (lambda (_g158678158687_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158678158687_))))
             (_g158676158732_
              (lambda (_g158678158695_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158678158695_))
                    (let ((_e158680158698_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158678158695_))))
                      (let ((_hd158681158702_
                             (let ()
                               (declare (not safe))
                               (##car _e158680158698_)))
                            (_tl158682158705_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158680158698_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158682158705_))
                            (let ((_e158683158708_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158682158705_))))
                              (let ((_hd158684158712_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158683158708_)))
                                    (_tl158685158715_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158683158708_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158685158715_))
                                    ((lambda (_L158718_)
                                       (let ((__tmp161278
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp161274
                                              (let ((__tmp161275
                                                     (let ((__tmp161277
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161276
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161277 __tmp161276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161275 '()))))
                                         (declare (not safe))
                                         (cons __tmp161278 __tmp161274)))
                                     _hd158684158712_)
                                    (_g158677158691_ _g158678158695_))))
                            (_g158677158691_ _g158678158695_))))
                    (_g158677158691_ _g158678158695_)))))
        (_g158676158732_ _$stx158673_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx158736_)
      (let* ((_g158740158754_
              (lambda (_g158741158750_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158741158750_))))
             (_g158739158795_
              (lambda (_g158741158758_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158741158758_))
                    (let ((_e158743158761_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158741158758_))))
                      (let ((_hd158744158765_
                             (let ()
                               (declare (not safe))
                               (##car _e158743158761_)))
                            (_tl158745158768_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158743158761_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158745158768_))
                            (let ((_e158746158771_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158745158768_))))
                              (let ((_hd158747158775_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158746158771_)))
                                    (_tl158748158778_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158746158771_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158748158778_))
                                    ((lambda (_L158781_)
                                       (let ((__tmp161283
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp161279
                                              (let ((__tmp161280
                                                     (let ((__tmp161282
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161281
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161282 __tmp161281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161280 '()))))
                                         (declare (not safe))
                                         (cons __tmp161283 __tmp161279)))
                                     _hd158747158775_)
                                    (_g158740158754_ _g158741158758_))))
                            (_g158740158754_ _g158741158758_))))
                    (_g158740158754_ _g158741158758_)))))
        (_g158739158795_ _$stx158736_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx158799_)
      (let* ((_g158803158825_
              (lambda (_g158804158821_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158804158821_))))
             (_g158802158894_
              (lambda (_g158804158829_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158804158829_))
                    (let ((_e158808158832_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158804158829_))))
                      (let ((_hd158809158836_
                             (let ()
                               (declare (not safe))
                               (##car _e158808158832_)))
                            (_tl158810158839_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158808158832_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158810158839_))
                            (let ((_e158811158842_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158810158839_))))
                              (let ((_hd158812158846_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158811158842_)))
                                    (_tl158813158849_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158811158842_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158813158849_))
                                    (let ((_e158814158852_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158813158849_))))
                                      (let ((_hd158815158856_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158814158852_)))
                                            (_tl158816158859_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158814158852_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158816158859_))
                                            (let ((_e158817158862_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158816158859_))))
                                              (let ((_hd158818158866_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158817158862_)))
                                                    (_tl158819158869_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158817158862_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158819158869_))
                                                    ((lambda (_L158872_
                                                              _L158874_
                                                              _L158875_)
                                                       (let ((__tmp161293
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp161284
                      (let ((__tmp161290
                             (let ((__tmp161292
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161291
                                    (let ()
                                      (declare (not safe))
                                      (cons _L158875_ '()))))
                               (declare (not safe))
                               (cons __tmp161292 __tmp161291)))
                            (__tmp161285
                             (let ((__tmp161287
                                    (let ((__tmp161289
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161288
                                           (let ()
                                             (declare (not safe))
                                             (cons _L158874_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161289 __tmp161288)))
                                   (__tmp161286
                                    (let ()
                                      (declare (not safe))
                                      (cons _L158872_ '()))))
                               (declare (not safe))
                               (cons __tmp161287 __tmp161286))))
                        (declare (not safe))
                        (cons __tmp161290 __tmp161285))))
                 (declare (not safe))
                 (cons __tmp161293 __tmp161284)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd158818158866_
                                                     _hd158815158856_
                                                     _hd158812158846_)
                                                    (_g158803158825_
                                                     _g158804158829_))))
                                            (_g158803158825_
                                             _g158804158829_))))
                                    (_g158803158825_ _g158804158829_))))
                            (_g158803158825_ _g158804158829_))))
                    (_g158803158825_ _g158804158829_)))))
        (_g158802158894_ _$stx158799_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx158898_)
      (let* ((_g158902158924_
              (lambda (_g158903158920_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158903158920_))))
             (_g158901158993_
              (lambda (_g158903158928_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158903158928_))
                    (let ((_e158907158931_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158903158928_))))
                      (let ((_hd158908158935_
                             (let ()
                               (declare (not safe))
                               (##car _e158907158931_)))
                            (_tl158909158938_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158907158931_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158909158938_))
                            (let ((_e158910158941_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158909158938_))))
                              (let ((_hd158911158945_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158910158941_)))
                                    (_tl158912158948_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158910158941_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158912158948_))
                                    (let ((_e158913158951_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158912158948_))))
                                      (let ((_hd158914158955_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158913158951_)))
                                            (_tl158915158958_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158913158951_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158915158958_))
                                            (let ((_e158916158961_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158915158958_))))
                                              (let ((_hd158917158965_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158916158961_)))
                                                    (_tl158918158968_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158916158961_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158918158968_))
                                                    ((lambda (_L158971_
                                                              _L158973_
                                                              _L158974_)
                                                       (let ((__tmp161303
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp161294
                      (let ((__tmp161300
                             (let ((__tmp161302
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161301
                                    (let ()
                                      (declare (not safe))
                                      (cons _L158974_ '()))))
                               (declare (not safe))
                               (cons __tmp161302 __tmp161301)))
                            (__tmp161295
                             (let ((__tmp161297
                                    (let ((__tmp161299
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161298
                                           (let ()
                                             (declare (not safe))
                                             (cons _L158973_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161299 __tmp161298)))
                                   (__tmp161296
                                    (let ()
                                      (declare (not safe))
                                      (cons _L158971_ '()))))
                               (declare (not safe))
                               (cons __tmp161297 __tmp161296))))
                        (declare (not safe))
                        (cons __tmp161300 __tmp161295))))
                 (declare (not safe))
                 (cons __tmp161303 __tmp161294)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd158917158965_
                                                     _hd158914158955_
                                                     _hd158911158945_)
                                                    (_g158902158924_
                                                     _g158903158928_))))
                                            (_g158902158924_
                                             _g158903158928_))))
                                    (_g158902158924_ _g158903158928_))))
                            (_g158902158924_ _g158903158928_))))
                    (_g158902158924_ _g158903158928_)))))
        (_g158901158993_ _$stx158898_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx158997_)
      (let* ((___stx160812160813_ _$stx158997_)
             (_g159005159073_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx160812160813_)))))
        (let ((___kont160815160816_
               (lambda (_L159351_ _L159353_)
                 (let ((__tmp161324
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161304
                        (let ((__tmp161320
                               (let ((__tmp161323
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161321
                                      (let ((__tmp161322
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161322 '()))))
                                 (declare (not safe))
                                 (cons __tmp161323 __tmp161321)))
                              (__tmp161305
                               (let ((__tmp161317
                                      (let ((__tmp161319
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161318
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159353_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161319 __tmp161318)))
                                     (__tmp161306
                                      (let ((__tmp161307
                                             (let ((__tmp161308
                                                    (let ((__tmp161309
                                                           (let ((__tmp161316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161310
                          (let ((__tmp161311
                                 (let ((__tmp161315
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp161312
                                        (let ((__tmp161313
                                               (let ((__tmp161314
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L159351_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp161314))))
                                          (declare (not safe))
                                          (cons _L159353_ __tmp161313))))
                                   (declare (not safe))
                                   (cons __tmp161315 __tmp161312))))
                            (declare (not safe))
                            (cons __tmp161311 '()))))
                     (declare (not safe))
                     (cons __tmp161316 __tmp161310))))
              (declare (not safe))
              (cons __tmp161309 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L159351_ __tmp161308))))
                                        (declare (not safe))
                                        (cons '#f __tmp161307))))
                                 (declare (not safe))
                                 (cons __tmp161317 __tmp161306))))
                          (declare (not safe))
                          (cons __tmp161320 __tmp161305))))
                   (declare (not safe))
                   (cons __tmp161324 __tmp161304))))
              (___kont160817160818_
               (lambda (_L159282_ _L159284_)
                 (let ((__tmp161325
                        (let ((__tmp161326
                               (let ((__tmp161327
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L159282_ __tmp161327))))
                          (declare (not safe))
                          (cons 'primitive: __tmp161326))))
                   (declare (not safe))
                   (cons _L159284_ __tmp161325))))
              (___kont160819160820_
               (lambda (_L159221_ _L159223_)
                 (let ((__tmp161341
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp161328
                        (let ((__tmp161337
                               (let ((__tmp161340
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161338
                                      (let ((__tmp161339
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161339 '()))))
                                 (declare (not safe))
                                 (cons __tmp161340 __tmp161338)))
                              (__tmp161329
                               (let ((__tmp161334
                                      (let ((__tmp161336
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161335
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159223_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161336 __tmp161335)))
                                     (__tmp161330
                                      (let ((__tmp161331
                                             (let ((__tmp161333
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161332
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159221_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161333
                                                     __tmp161332))))
                                        (declare (not safe))
                                        (cons __tmp161331 '()))))
                                 (declare (not safe))
                                 (cons __tmp161334 __tmp161330))))
                          (declare (not safe))
                          (cons __tmp161337 __tmp161329))))
                   (declare (not safe))
                   (cons __tmp161341 __tmp161328))))
              (___kont160821160822_
               (lambda (_L159153_ _L159155_)
                 (let ((__tmp161355
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161342
                        (let ((__tmp161351
                               (let ((__tmp161354
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161352
                                      (let ((__tmp161353
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161353 '()))))
                                 (declare (not safe))
                                 (cons __tmp161354 __tmp161352)))
                              (__tmp161343
                               (let ((__tmp161348
                                      (let ((__tmp161350
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161349
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159155_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161350 __tmp161349)))
                                     (__tmp161344
                                      (let ((__tmp161345
                                             (let ((__tmp161347
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161346
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159153_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161347
                                                     __tmp161346))))
                                        (declare (not safe))
                                        (cons __tmp161345 '()))))
                                 (declare (not safe))
                                 (cons __tmp161348 __tmp161344))))
                          (declare (not safe))
                          (cons __tmp161351 __tmp161343))))
                   (declare (not safe))
                   (cons __tmp161355 __tmp161342))))
              (___kont160823160824_
               (lambda (_L159100_ _L159102_)
                 (let ((__tmp161356
                        (let ((__tmp161357
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L159100_ __tmp161357))))
                   (declare (not safe))
                   (cons _L159102_ __tmp161356)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx160812160813_))
              (let ((_e159009159307_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx160812160813_))))
                (let ((_tl159011159314_
                       (let () (declare (not safe)) (##cdr _e159009159307_)))
                      (_hd159010159311_
                       (let () (declare (not safe)) (##car _e159009159307_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159011159314_))
                      (let ((_e159012159317_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159011159314_))))
                        (let ((_tl159014159324_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159012159317_)))
                              (_hd159013159321_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159012159317_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159014159324_))
                              (let ((_e159015159327_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159014159324_))))
                                (let ((_tl159017159334_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159015159327_)))
                                      (_hd159016159331_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159015159327_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd159016159331_))
                                      (let ((_e159018159337_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd159016159331_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e159018159337_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159017159334_))
                                                (let ((_e159019159341_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159017159334_))))
                                                  (let ((_tl159021159348_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159019159341_)))
                                                        (_hd159020159345_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159019159341_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159021159348_))
                                                        (___kont160815160816_
                                                         _hd159020159345_
                                                         _hd159013159321_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd159013159321_))
                                                            (let ((_e159030159268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd159013159321_))))
                      (declare (not safe))
                      (_g159005159073_))
                    (let () (declare (not safe)) (_g159005159073_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159013159321_))
                                                    (let ((_e159030159268_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159013159321_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e159030159268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159017159334_))
                      (___kont160817160818_ _hd159016159331_ _hd159010159311_)
                      (let () (declare (not safe)) (_g159005159073_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159017159334_))
                      (___kont160821160822_ _hd159016159331_ _hd159013159321_)
                      (let () (declare (not safe)) (_g159005159073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159017159334_))
                                                        (___kont160821160822_
                                                         _hd159016159331_
                                                         _hd159013159321_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159005159073_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159013159321_))
                                                (let ((_e159030159268_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159013159321_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e159030159268_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159017159334_))
                                                          (___kont160817160818_
                                                           _hd159016159331_
                                                           _hd159010159311_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl159017159334_))
                      (let ((_e159046159211_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159017159334_))))
                        (let ((_tl159048159218_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159046159211_)))
                              (_hd159047159215_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159046159211_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159048159218_))
                              (___kont160819160820_
                               _hd159047159215_
                               _hd159016159331_)
                              (let ()
                                (declare (not safe))
                                (_g159005159073_)))))
                      (let () (declare (not safe)) (_g159005159073_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159017159334_))
                  (___kont160821160822_ _hd159016159331_ _hd159013159321_)
                  (let () (declare (not safe)) (_g159005159073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159017159334_))
                                                    (___kont160821160822_
                                                     _hd159016159331_
                                                     _hd159013159321_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159005159073_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd159013159321_))
                                          (let ((_e159030159268_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd159013159321_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e159030159268_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159017159334_))
                                                    (___kont160817160818_
                                                     _hd159016159331_
                                                     _hd159010159311_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl159017159334_))
                                                        (let ((_e159046159211_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl159017159334_))))
                  (let ((_tl159048159218_
                         (let () (declare (not safe)) (##cdr _e159046159211_)))
                        (_hd159047159215_
                         (let ()
                           (declare (not safe))
                           (##car _e159046159211_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl159048159218_))
                        (___kont160819160820_
                         _hd159047159215_
                         _hd159016159331_)
                        (let () (declare (not safe)) (_g159005159073_)))))
                (let () (declare (not safe)) (_g159005159073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159017159334_))
                                                    (___kont160821160822_
                                                     _hd159016159331_
                                                     _hd159013159321_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159005159073_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159017159334_))
                                              (___kont160821160822_
                                               _hd159016159331_
                                               _hd159013159321_)
                                              (let ()
                                                (declare (not safe))
                                                (_g159005159073_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159013159321_))
                                  (let ((_e159030159268_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159013159321_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159014159324_))
                                        (___kont160823160824_
                                         _hd159013159321_
                                         _hd159010159311_)
                                        (let ()
                                          (declare (not safe))
                                          (_g159005159073_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159014159324_))
                                      (___kont160823160824_
                                       _hd159013159321_
                                       _hd159010159311_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159005159073_)))))))
                      (let () (declare (not safe)) (_g159005159073_)))))
              (let () (declare (not safe)) (_g159005159073_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx159375_)
      (let* ((___stx160952160953_ _$stx159375_)
             (_g159380159435_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx160952160953_)))))
        (let ((___kont160955160956_
               (lambda (_L159620_ _L159622_)
                 (let ((__tmp161373
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp161358
                        (let ((__tmp161369
                               (let ((__tmp161372
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161370
                                      (let ((__tmp161371
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161371 '()))))
                                 (declare (not safe))
                                 (cons __tmp161372 __tmp161370)))
                              (__tmp161359
                               (let ((__tmp161360
                                      (let ((__tmp161368
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161361
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159620_
                                                  _L159622_))
                                               (let ((__tmp161362
                                                      (lambda (_g159639159643_
                                                               _g159640159646_
                                                               _g159641159648_)
                                                        (let ((__tmp161363
                                                               (let ((__tmp161367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161364
                              (let ((__tmp161365
                                     (let ((__tmp161366
                                            (let ()
                                              (declare (not safe))
                                              (cons _g159639159643_ '()))))
                                       (declare (not safe))
                                       (cons _g159640159646_ __tmp161366))))
                                (declare (not safe))
                                (cons 'primitive: __tmp161365))))
                         (declare (not safe))
                         (cons __tmp161367 __tmp161364))))
                  (declare (not safe))
                  (cons __tmp161363 _g159641159648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161362
                                                         '()
                                                         _L159620_
                                                         _L159622_)))))
                                        (declare (not safe))
                                        (cons __tmp161368 __tmp161361))))
                                 (declare (not safe))
                                 (cons __tmp161360 '()))))
                          (declare (not safe))
                          (cons __tmp161369 __tmp161359))))
                   (declare (not safe))
                   (cons __tmp161373 __tmp161358))))
              (___kont160959160960_
               (lambda (_L159506_ _L159508_)
                 (let ((__tmp161388
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp161374
                        (let ((__tmp161384
                               (let ((__tmp161387
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161385
                                      (let ((__tmp161386
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161386 '()))))
                                 (declare (not safe))
                                 (cons __tmp161387 __tmp161385)))
                              (__tmp161375
                               (let ((__tmp161376
                                      (let ((__tmp161383
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161377
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159506_
                                                  _L159508_))
                                               (let ((__tmp161378
                                                      (lambda (_g159523159527_
                                                               _g159524159530_
                                                               _g159525159532_)
                                                        (let ((__tmp161379
                                                               (let ((__tmp161382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161380
                              (let ((__tmp161381
                                     (let ()
                                       (declare (not safe))
                                       (cons _g159523159527_ '()))))
                                (declare (not safe))
                                (cons _g159524159530_ __tmp161381))))
                         (declare (not safe))
                         (cons __tmp161382 __tmp161380))))
                  (declare (not safe))
                  (cons __tmp161379 _g159525159532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161378
                                                         '()
                                                         _L159506_
                                                         _L159508_)))))
                                        (declare (not safe))
                                        (cons __tmp161383 __tmp161377))))
                                 (declare (not safe))
                                 (cons __tmp161376 '()))))
                          (declare (not safe))
                          (cons __tmp161384 __tmp161375))))
                   (declare (not safe))
                   (cons __tmp161388 __tmp161374)))))
          (let* ((___match161003161004_
                  (lambda (_e159410159442_
                           _hd159411159446_
                           _tl159412159449_
                           ___splice160961160962_
                           _target159413159452_
                           _tl159415159455_)
                    (letrec ((_loop159416159458_
                              (lambda (_hd159414159462_
                                       _dispatch159420159465_
                                       _arity159421159467_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159414159462_))
                                    (let ((_e159417159470_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159414159462_))))
                                      (let ((_lp-tl159419159477_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159417159470_)))
                                            (_lp-hd159418159474_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159417159470_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159418159474_))
                                            (let ((_e159424159480_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159418159474_))))
                                              (let ((_tl159426159487_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159424159480_)))
                                                    (_hd159425159484_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159424159480_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159426159487_))
                                                    (let ((_e159427159490_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159426159487_))))
                                                      (let ((_tl159429159497_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159427159490_)))
                    (_hd159428159494_
                     (let () (declare (not safe)) (##car _e159427159490_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159429159497_))
                    (_loop159416159458_
                     _lp-tl159419159477_
                     (let ()
                       (declare (not safe))
                       (cons _hd159428159494_ _dispatch159420159465_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159425159484_ _arity159421159467_)))
                    (let () (declare (not safe)) (_g159380159435_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159380159435_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g159380159435_)))))
                                    (let ((_arity159423159503_
                                           (reverse _arity159421159467_))
                                          (_dispatch159422159500_
                                           (reverse _dispatch159420159465_)))
                                      (___kont160959160960_
                                       _dispatch159422159500_
                                       _arity159423159503_))))))
                      (_loop159416159458_ _target159413159452_ '() '()))))
                 (___match160995160996_
                  (lambda (_e159410159442_ _hd159411159446_ _tl159412159449_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl159412159449_))
                        (let ((___splice160961160962_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl159412159449_
                                  '0))))
                          (let ((_tl159415159455_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice160961160962_ '1)))
                                (_target159413159452_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice160961160962_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl159415159455_))
                                (___match161003161004_
                                 _e159410159442_
                                 _hd159411159446_
                                 _tl159412159449_
                                 ___splice160961160962_
                                 _target159413159452_
                                 _tl159415159455_)
                                (let ()
                                  (declare (not safe))
                                  (_g159380159435_)))))
                        (let () (declare (not safe)) (_g159380159435_)))))
                 (___match160989160990_
                  (lambda (_e159384159542_
                           _hd159385159546_
                           _tl159386159549_
                           _e159387159552_
                           _hd159388159556_
                           _tl159389159559_
                           _e159390159562_
                           ___splice160957160958_
                           _target159391159566_
                           _tl159393159569_)
                    (letrec ((_loop159394159572_
                              (lambda (_hd159392159576_
                                       _dispatch159398159579_
                                       _arity159399159581_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159392159576_))
                                    (let ((_e159395159584_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159392159576_))))
                                      (let ((_lp-tl159397159591_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159395159584_)))
                                            (_lp-hd159396159588_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159395159584_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159396159588_))
                                            (let ((_e159402159594_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159396159588_))))
                                              (let ((_tl159404159601_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159402159594_)))
                                                    (_hd159403159598_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159402159594_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159404159601_))
                                                    (let ((_e159405159604_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159404159601_))))
                                                      (let ((_tl159407159611_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159405159604_)))
                    (_hd159406159608_
                     (let () (declare (not safe)) (##car _e159405159604_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159407159611_))
                    (_loop159394159572_
                     _lp-tl159397159591_
                     (let ()
                       (declare (not safe))
                       (cons _hd159406159608_ _dispatch159398159579_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159403159598_ _arity159399159581_)))
                    (___match160995160996_
                     _e159384159542_
                     _hd159385159546_
                     _tl159386159549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match160995160996_
                                                     _e159384159542_
                                                     _hd159385159546_
                                                     _tl159386159549_))))
                                            (___match160995160996_
                                             _e159384159542_
                                             _hd159385159546_
                                             _tl159386159549_))))
                                    (let ((_arity159401159617_
                                           (reverse _arity159399159581_))
                                          (_dispatch159400159614_
                                           (reverse _dispatch159398159579_)))
                                      (___kont160955160956_
                                       _dispatch159400159614_
                                       _arity159401159617_))))))
                      (_loop159394159572_ _target159391159566_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx160952160953_))
                (let ((_e159384159542_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx160952160953_))))
                  (let ((_tl159386159549_
                         (let () (declare (not safe)) (##cdr _e159384159542_)))
                        (_hd159385159546_
                         (let ()
                           (declare (not safe))
                           (##car _e159384159542_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159386159549_))
                        (let ((_e159387159552_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159386159549_))))
                          (let ((_tl159389159559_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159387159552_)))
                                (_hd159388159556_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159387159552_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd159388159556_))
                                (let ((_e159390159562_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd159388159556_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e159390159562_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159389159559_))
                                          (let ((___splice160957160958_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159389159559_
                                                    '0))))
                                            (let ((_tl159393159569_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice160957160958_
                                                      '1)))
                                                  (_target159391159566_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice160957160958_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159393159569_))
                                                  (___match160989160990_
                                                   _e159384159542_
                                                   _hd159385159546_
                                                   _tl159386159549_
                                                   _e159387159552_
                                                   _hd159388159556_
                                                   _tl159389159559_
                                                   _e159390159562_
                                                   ___splice160957160958_
                                                   _target159391159566_
                                                   _tl159393159569_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159386159549_))
                                                      (let ((___splice160961160962_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159386159549_ '0))))
                (let ((_tl159415159455_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice160961160962_ '1)))
                      (_target159413159452_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice160961160962_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159415159455_))
                      (___match161003161004_
                       _e159384159542_
                       _hd159385159546_
                       _tl159386159549_
                       ___splice160961160962_
                       _target159413159452_
                       _tl159415159455_)
                      (let () (declare (not safe)) (_g159380159435_)))))
              (let () (declare (not safe)) (_g159380159435_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl159386159549_))
                                              (let ((___splice160961160962_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl159386159549_
                                                        '0))))
                                                (let ((_tl159415159455_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice160961160962_
                                                          '1)))
                                                      (_target159413159452_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice160961160962_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl159415159455_))
                                                      (___match161003161004_
                                                       _e159384159542_
                                                       _hd159385159546_
                                                       _tl159386159549_
                                                       ___splice160961160962_
                                                       _target159413159452_
                                                       _tl159415159455_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g159380159435_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g159380159435_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159386159549_))
                                          (let ((___splice160961160962_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159386159549_
                                                    '0))))
                                            (let ((_tl159415159455_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice160961160962_
                                                      '1)))
                                                  (_target159413159452_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice160961160962_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159415159455_))
                                                  (___match161003161004_
                                                   _e159384159542_
                                                   _hd159385159546_
                                                   _tl159386159549_
                                                   ___splice160961160962_
                                                   _target159413159452_
                                                   _tl159415159455_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g159380159435_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g159380159435_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159386159549_))
                                    (let ((___splice160961160962_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159386159549_
                                              '0))))
                                      (let ((_tl159415159455_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice160961160962_
                                                '1)))
                                            (_target159413159452_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice160961160962_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159415159455_))
                                            (___match161003161004_
                                             _e159384159542_
                                             _hd159385159546_
                                             _tl159386159549_
                                             ___splice160961160962_
                                             _target159413159452_
                                             _tl159415159455_)
                                            (let ()
                                              (declare (not safe))
                                              (_g159380159435_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g159380159435_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159386159549_))
                            (let ((___splice160961160962_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159386159549_
                                      '0))))
                              (let ((_tl159415159455_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice160961160962_
                                        '1)))
                                    (_target159413159452_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice160961160962_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159415159455_))
                                    (___match161003161004_
                                     _e159384159542_
                                     _hd159385159546_
                                     _tl159386159549_
                                     ___splice160961160962_
                                     _target159413159452_
                                     _tl159415159455_)
                                    (let ()
                                      (declare (not safe))
                                      (_g159380159435_)))))
                            (let () (declare (not safe)) (_g159380159435_))))))
                (let () (declare (not safe)) (_g159380159435_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx159657_)
      (let* ((_g159661159679_
              (lambda (_g159662159675_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159662159675_))))
             (_g159660159734_
              (lambda (_g159662159683_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159662159683_))
                    (let ((_e159665159686_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159662159683_))))
                      (let ((_hd159666159690_
                             (let ()
                               (declare (not safe))
                               (##car _e159665159686_)))
                            (_tl159667159693_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159665159686_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159667159693_))
                            (let ((_e159668159696_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159667159693_))))
                              (let ((_hd159669159700_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159668159696_)))
                                    (_tl159670159703_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159668159696_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159670159703_))
                                    (let ((_e159671159706_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159670159703_))))
                                      (let ((_hd159672159710_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159671159706_)))
                                            (_tl159673159713_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159671159706_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159673159713_))
                                            ((lambda (_L159716_ _L159718_)
                                               (let ((__tmp161402
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp161389
                                                      (let ((__tmp161398
                                                             (let ((__tmp161401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161399
                            (let ((__tmp161400
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp161400 '()))))
                       (declare (not safe))
                       (cons __tmp161401 __tmp161399)))
                    (__tmp161390
                     (let ((__tmp161395
                            (let ((__tmp161397
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161396
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159718_ '()))))
                              (declare (not safe))
                              (cons __tmp161397 __tmp161396)))
                           (__tmp161391
                            (let ((__tmp161392
                                   (let ((__tmp161394
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161393
                                          (let ()
                                            (declare (not safe))
                                            (cons _L159716_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161394 __tmp161393))))
                              (declare (not safe))
                              (cons __tmp161392 '()))))
                       (declare (not safe))
                       (cons __tmp161395 __tmp161391))))
                (declare (not safe))
                (cons __tmp161398 __tmp161390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161402
                                                       __tmp161389)))
                                             _hd159672159710_
                                             _hd159669159700_)
                                            (_g159661159679_
                                             _g159662159683_))))
                                    (_g159661159679_ _g159662159683_))))
                            (_g159661159679_ _g159662159683_))))
                    (_g159661159679_ _g159662159683_)))))
        (_g159660159734_ _$stx159657_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx159738_)
      (let* ((_g159742159760_
              (lambda (_g159743159756_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159743159756_))))
             (_g159741159815_
              (lambda (_g159743159764_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159743159764_))
                    (let ((_e159746159767_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159743159764_))))
                      (let ((_hd159747159771_
                             (let ()
                               (declare (not safe))
                               (##car _e159746159767_)))
                            (_tl159748159774_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159746159767_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159748159774_))
                            (let ((_e159749159777_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159748159774_))))
                              (let ((_hd159750159781_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159749159777_)))
                                    (_tl159751159784_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159749159777_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159751159784_))
                                    (let ((_e159752159787_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159751159784_))))
                                      (let ((_hd159753159791_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159752159787_)))
                                            (_tl159754159794_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159752159787_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159754159794_))
                                            ((lambda (_L159797_ _L159799_)
                                               (let ((__tmp161416
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp161403
                                                      (let ((__tmp161412
                                                             (let ((__tmp161415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161413
                            (let ((__tmp161414
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp161414 '()))))
                       (declare (not safe))
                       (cons __tmp161415 __tmp161413)))
                    (__tmp161404
                     (let ((__tmp161409
                            (let ((__tmp161411
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161410
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159799_ '()))))
                              (declare (not safe))
                              (cons __tmp161411 __tmp161410)))
                           (__tmp161405
                            (let ((__tmp161406
                                   (let ((__tmp161408
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161407
                                          (let ()
                                            (declare (not safe))
                                            (cons _L159797_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161408 __tmp161407))))
                              (declare (not safe))
                              (cons __tmp161406 '()))))
                       (declare (not safe))
                       (cons __tmp161409 __tmp161405))))
                (declare (not safe))
                (cons __tmp161412 __tmp161404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161416
                                                       __tmp161403)))
                                             _hd159753159791_
                                             _hd159750159781_)
                                            (_g159742159760_
                                             _g159743159764_))))
                                    (_g159742159760_ _g159743159764_))))
                            (_g159742159760_ _g159743159764_))))
                    (_g159742159760_ _g159743159764_)))))
        (_g159741159815_ _$stx159738_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx159819_)
      (let* ((___stx161006161007_ _$stx159819_)
             (_g159826159897_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161006161007_)))))
        (let ((___kont161009161010_
               (lambda (_L160188_ _L160190_)
                 (let ((__tmp161422
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161417
                        (let ((__tmp161418
                               (let ((__tmp161419
                                      (let ((__tmp161421
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161420
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160188_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161421 __tmp161420))))
                                 (declare (not safe))
                                 (cons __tmp161419 '()))))
                          (declare (not safe))
                          (cons _L160190_ __tmp161418))))
                   (declare (not safe))
                   (cons __tmp161422 __tmp161417))))
              (___kont161011161012_
               (lambda (_L160107_ _L160109_)
                 (let ((__tmp161431
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161423
                        (let ((__tmp161424
                               (let ((__tmp161425
                                      (let ((__tmp161430
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161426
                                             (let ((__tmp161427
                                                    (lambda (_g160128160131_
                                                             _g160129160134_)
                                                      (let ((__tmp161428
                                                             (let ((__tmp161429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160128160131_ __tmp161429))))
                (declare (not safe))
                (cons __tmp161428 _g160129160134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161427
                                                       '()
                                                       _L160107_))))
                                        (declare (not safe))
                                        (cons __tmp161430 __tmp161426))))
                                 (declare (not safe))
                                 (cons __tmp161425 '()))))
                          (declare (not safe))
                          (cons _L160109_ __tmp161424))))
                   (declare (not safe))
                   (cons __tmp161431 __tmp161423))))
              (___kont161015161016_
               (lambda (_L160019_ _L160021_)
                 (let ((__tmp161438
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161432
                        (let ((__tmp161433
                               (let ((__tmp161434
                                      (let ((__tmp161437
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161435
                                             (let ((__tmp161436
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160019_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161436))))
                                        (declare (not safe))
                                        (cons __tmp161437 __tmp161435))))
                                 (declare (not safe))
                                 (cons __tmp161434 '()))))
                          (declare (not safe))
                          (cons _L160021_ __tmp161433))))
                   (declare (not safe))
                   (cons __tmp161438 __tmp161432))))
              (___kont161017161018_
               (lambda (_L159954_ _L159956_)
                 (let ((__tmp161448
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161439
                        (let ((__tmp161440
                               (let ((__tmp161441
                                      (let ((__tmp161447
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161442
                                             (let ((__tmp161443
                                                    (let ((__tmp161444
                                                           (lambda (_g159973159976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g159974159979_)
                     (let ((__tmp161445
                            (let ((__tmp161446
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g159973159976_ __tmp161446))))
                       (declare (not safe))
                       (cons __tmp161445 _g159974159979_)))))
              (declare (not safe))
              (foldr1 __tmp161444 '() _L159954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161443))))
                                        (declare (not safe))
                                        (cons __tmp161447 __tmp161442))))
                                 (declare (not safe))
                                 (cons __tmp161441 '()))))
                          (declare (not safe))
                          (cons _L159956_ __tmp161440))))
                   (declare (not safe))
                   (cons __tmp161448 __tmp161439)))))
          (let* ((___match161125161126_
                  (lambda (_e159877159904_
                           _hd159878159908_
                           _tl159879159911_
                           _e159880159914_
                           _hd159881159918_
                           _tl159882159921_
                           ___splice161019161020_
                           _target159883159924_
                           _tl159885159927_)
                    (letrec ((_loop159886159930_
                              (lambda (_hd159884159934_ _arity159890159937_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159884159934_))
                                    (let ((_e159887159940_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159884159934_))))
                                      (let ((_lp-tl159889159947_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159887159940_)))
                                            (_lp-hd159888159944_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159887159940_))))
                                        (_loop159886159930_
                                         _lp-tl159889159947_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd159888159944_
                                                 _arity159890159937_)))))
                                    (let ((_arity159891159950_
                                           (reverse _arity159890159937_)))
                                      (___kont161017161018_
                                       _arity159891159950_
                                       _hd159881159918_))))))
                      (_loop159886159930_ _target159883159924_ '()))))
                 (___match161085161086_
                  (lambda (_e159845160043_
                           _hd159846160047_
                           _tl159847160050_
                           _e159848160053_
                           _hd159849160057_
                           _tl159850160060_
                           _e159851160063_
                           _hd159852160067_
                           _tl159853160070_
                           _e159854160073_
                           ___splice161013161014_
                           _target159855160077_
                           _tl159857160080_)
                    (letrec ((_loop159858160083_
                              (lambda (_hd159856160087_ _arity159862160090_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159856160087_))
                                    (let ((_e159859160093_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159856160087_))))
                                      (let ((_lp-tl159861160100_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159859160093_)))
                                            (_lp-hd159860160097_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159859160093_))))
                                        (_loop159858160083_
                                         _lp-tl159861160100_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd159860160097_
                                                 _arity159862160090_)))))
                                    (let ((_arity159863160103_
                                           (reverse _arity159862160090_)))
                                      (___kont161011161012_
                                       _arity159863160103_
                                       _hd159849160057_))))))
                      (_loop159858160083_ _target159855160077_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161006161007_))
                (let ((_e159830160144_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161006161007_))))
                  (let ((_tl159832160151_
                         (let () (declare (not safe)) (##cdr _e159830160144_)))
                        (_hd159831160148_
                         (let ()
                           (declare (not safe))
                           (##car _e159830160144_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159832160151_))
                        (let ((_e159833160154_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159832160151_))))
                          (let ((_tl159835160161_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159833160154_)))
                                (_hd159834160158_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159833160154_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159835160161_))
                                (let ((_e159836160164_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159835160161_))))
                                  (let ((_tl159838160171_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159836160164_)))
                                        (_hd159837160168_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159836160164_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd159837160168_))
                                        (let ((_e159839160174_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd159837160168_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e159839160174_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl159838160171_))
                                                  (let ((_e159840160178_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl159838160171_))))
                                                    (let ((_tl159842160185_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e159840160178_)))
                                                          (_hd159841160182_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e159840160178_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159842160185_))
                                                          (___kont161009161010_
                                                           _hd159841160182_
                                                           _hd159834160158_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl159838160171_))
                      (let ((___splice161013161014_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl159838160171_ '0))))
                        (let ((_tl159857160080_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161013161014_ '1)))
                              (_target159855160077_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161013161014_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159857160080_))
                              (___match161085161086_
                               _e159830160144_
                               _hd159831160148_
                               _tl159832160151_
                               _e159833160154_
                               _hd159834160158_
                               _tl159835160161_
                               _e159836160164_
                               _hd159837160168_
                               _tl159838160171_
                               _e159839160174_
                               ___splice161013161014_
                               _target159855160077_
                               _tl159857160080_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl159835160161_))
                                  (let ((___splice161019161020_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl159835160161_
                                            '0))))
                                    (let ((_tl159885159927_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161019161020_
                                              '1)))
                                          (_target159883159924_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161019161020_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl159885159927_))
                                          (___match161125161126_
                                           _e159830160144_
                                           _hd159831160148_
                                           _tl159832160151_
                                           _e159833160154_
                                           _hd159834160158_
                                           _tl159835160161_
                                           ___splice161019161020_
                                           _target159883159924_
                                           _tl159885159927_)
                                          (let ()
                                            (declare (not safe))
                                            (_g159826159897_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g159826159897_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl159835160161_))
                          (let ((___splice161019161020_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl159835160161_
                                    '0))))
                            (let ((_tl159885159927_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice161019161020_ '1)))
                                  (_target159883159924_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice161019161020_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl159885159927_))
                                  (___match161125161126_
                                   _e159830160144_
                                   _hd159831160148_
                                   _tl159832160151_
                                   _e159833160154_
                                   _hd159834160158_
                                   _tl159835160161_
                                   ___splice161019161020_
                                   _target159883159924_
                                   _tl159885159927_)
                                  (let ()
                                    (declare (not safe))
                                    (_g159826159897_)))))
                          (let () (declare (not safe)) (_g159826159897_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159838160171_))
                                                      (let ((___splice161013161014_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159838160171_ '0))))
                (let ((_tl159857160080_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161013161014_ '1)))
                      (_target159855160077_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161013161014_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159857160080_))
                      (___match161085161086_
                       _e159830160144_
                       _hd159831160148_
                       _tl159832160151_
                       _e159833160154_
                       _hd159834160158_
                       _tl159835160161_
                       _e159836160164_
                       _hd159837160168_
                       _tl159838160171_
                       _e159839160174_
                       ___splice161013161014_
                       _target159855160077_
                       _tl159857160080_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl159838160171_))
                          (___kont161015161016_
                           _hd159837160168_
                           _hd159834160158_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl159835160161_))
                              (let ((___splice161019161020_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl159835160161_
                                        '0))))
                                (let ((_tl159885159927_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161019161020_
                                          '1)))
                                      (_target159883159924_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161019161020_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159885159927_))
                                      (___match161125161126_
                                       _e159830160144_
                                       _hd159831160148_
                                       _tl159832160151_
                                       _e159833160154_
                                       _hd159834160158_
                                       _tl159835160161_
                                       ___splice161019161020_
                                       _target159883159924_
                                       _tl159885159927_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159826159897_)))))
                              (let ()
                                (declare (not safe))
                                (_g159826159897_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159838160171_))
                  (___kont161015161016_ _hd159837160168_ _hd159834160158_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl159835160161_))
                      (let ((___splice161019161020_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl159835160161_ '0))))
                        (let ((_tl159885159927_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161019161020_ '1)))
                              (_target159883159924_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161019161020_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159885159927_))
                              (___match161125161126_
                               _e159830160144_
                               _hd159831160148_
                               _tl159832160151_
                               _e159833160154_
                               _hd159834160158_
                               _tl159835160161_
                               ___splice161019161020_
                               _target159883159924_
                               _tl159885159927_)
                              (let ()
                                (declare (not safe))
                                (_g159826159897_)))))
                      (let () (declare (not safe)) (_g159826159897_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159838160171_))
                                                  (___kont161015161016_
                                                   _hd159837160168_
                                                   _hd159834160158_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159835160161_))
                                                      (let ((___splice161019161020_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159835160161_ '0))))
                (let ((_tl159885159927_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161019161020_ '1)))
                      (_target159883159924_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161019161020_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159885159927_))
                      (___match161125161126_
                       _e159830160144_
                       _hd159831160148_
                       _tl159832160151_
                       _e159833160154_
                       _hd159834160158_
                       _tl159835160161_
                       ___splice161019161020_
                       _target159883159924_
                       _tl159885159927_)
                      (let () (declare (not safe)) (_g159826159897_)))))
              (let () (declare (not safe)) (_g159826159897_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159838160171_))
                                            (___kont161015161016_
                                             _hd159837160168_
                                             _hd159834160158_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl159835160161_))
                                                (let ((___splice161019161020_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl159835160161_
                                                          '0))))
                                                  (let ((_tl159885159927_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161019161020_
                                                            '1)))
                                                        (_target159883159924_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161019161020_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159885159927_))
                                                        (___match161125161126_
                                                         _e159830160144_
                                                         _hd159831160148_
                                                         _tl159832160151_
                                                         _e159833160154_
                                                         _hd159834160158_
                                                         _tl159835160161_
                                                         ___splice161019161020_
                                                         _target159883159924_
                                                         _tl159885159927_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159826159897_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g159826159897_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159835160161_))
                                    (let ((___splice161019161020_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159835160161_
                                              '0))))
                                      (let ((_tl159885159927_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161019161020_
                                                '1)))
                                            (_target159883159924_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161019161020_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159885159927_))
                                            (___match161125161126_
                                             _e159830160144_
                                             _hd159831160148_
                                             _tl159832160151_
                                             _e159833160154_
                                             _hd159834160158_
                                             _tl159835160161_
                                             ___splice161019161020_
                                             _target159883159924_
                                             _tl159885159927_)
                                            (let ()
                                              (declare (not safe))
                                              (_g159826159897_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g159826159897_))))))
                        (let () (declare (not safe)) (_g159826159897_)))))
                (let () (declare (not safe)) (_g159826159897_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx160214_)
      (let* ((___stx161128161129_ _$stx160214_)
             (_g160219160254_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161128161129_)))))
        (let ((___kont161131161132_
               (lambda (_L160376_ _L160378_)
                 (let ((__tmp161454
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161449
                        (let ((__tmp161450
                               (let ((__tmp161451
                                      (let ((__tmp161453
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161452
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160376_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161453 __tmp161452))))
                                 (declare (not safe))
                                 (cons __tmp161451 '()))))
                          (declare (not safe))
                          (cons _L160378_ __tmp161450))))
                   (declare (not safe))
                   (cons __tmp161454 __tmp161449))))
              (___kont161133161134_
               (lambda (_L160311_ _L160313_)
                 (let ((__tmp161463
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161455
                        (let ((__tmp161456
                               (let ((__tmp161457
                                      (let ((__tmp161462
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161458
                                             (let ((__tmp161459
                                                    (lambda (_g160330160333_
                                                             _g160331160336_)
                                                      (let ((__tmp161460
                                                             (let ((__tmp161461
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160330160333_ __tmp161461))))
                (declare (not safe))
                (cons __tmp161460 _g160331160336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161459
                                                       '()
                                                       _L160311_))))
                                        (declare (not safe))
                                        (cons __tmp161462 __tmp161458))))
                                 (declare (not safe))
                                 (cons __tmp161457 '()))))
                          (declare (not safe))
                          (cons _L160313_ __tmp161456))))
                   (declare (not safe))
                   (cons __tmp161463 __tmp161455)))))
          (let ((___match161177161178_
                 (lambda (_e160234160261_
                          _hd160235160265_
                          _tl160236160268_
                          _e160237160271_
                          _hd160238160275_
                          _tl160239160278_
                          ___splice161135161136_
                          _target160240160281_
                          _tl160242160284_)
                   (letrec ((_loop160243160287_
                             (lambda (_hd160241160291_ _arity160247160294_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd160241160291_))
                                   (let ((_e160244160297_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd160241160291_))))
                                     (let ((_lp-tl160246160304_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e160244160297_)))
                                           (_lp-hd160245160301_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e160244160297_))))
                                       (_loop160243160287_
                                        _lp-tl160246160304_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd160245160301_
                                                _arity160247160294_)))))
                                   (let ((_arity160248160307_
                                          (reverse _arity160247160294_)))
                                     (___kont161133161134_
                                      _arity160248160307_
                                      _hd160238160275_))))))
                     (_loop160243160287_ _target160240160281_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161128161129_))
                (let ((_e160223160346_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161128161129_))))
                  (let ((_tl160225160353_
                         (let () (declare (not safe)) (##cdr _e160223160346_)))
                        (_hd160224160350_
                         (let ()
                           (declare (not safe))
                           (##car _e160223160346_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160225160353_))
                        (let ((_e160226160356_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160225160353_))))
                          (let ((_tl160228160363_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160226160356_)))
                                (_hd160227160360_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160226160356_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160228160363_))
                                (let ((_e160229160366_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160228160363_))))
                                  (let ((_tl160231160373_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160229160366_)))
                                        (_hd160230160370_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160229160366_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160231160373_))
                                        (___kont161131161132_
                                         _hd160230160370_
                                         _hd160227160360_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl160228160363_))
                                            (let ((___splice161135161136_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl160228160363_
                                                      '0))))
                                              (let ((_tl160242160284_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161135161136_
                                                        '1)))
                                                    (_target160240160281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161135161136_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160242160284_))
                                                    (___match161177161178_
                                                     _e160223160346_
                                                     _hd160224160350_
                                                     _tl160225160353_
                                                     _e160226160356_
                                                     _hd160227160360_
                                                     _tl160228160363_
                                                     ___splice161135161136_
                                                     _target160240160281_
                                                     _tl160242160284_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160219160254_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160219160254_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160228160363_))
                                    (let ((___splice161135161136_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160228160363_
                                              '0))))
                                      (let ((_tl160242160284_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161135161136_
                                                '1)))
                                            (_target160240160281_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161135161136_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160242160284_))
                                            (___match161177161178_
                                             _e160223160346_
                                             _hd160224160350_
                                             _tl160225160353_
                                             _e160226160356_
                                             _hd160227160360_
                                             _tl160228160363_
                                             ___splice161135161136_
                                             _target160240160281_
                                             _tl160242160284_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160219160254_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160219160254_))))))
                        (let () (declare (not safe)) (_g160219160254_)))))
                (let () (declare (not safe)) (_g160219160254_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx160398_)
      (let* ((_g160402160437_
              (lambda (_g160403160433_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160403160433_))))
             (_g160401160565_
              (lambda (_g160403160441_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160403160441_))
                    (let ((_e160406160444_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160403160441_))))
                      (let ((_hd160407160448_
                             (let ()
                               (declare (not safe))
                               (##car _e160406160444_)))
                            (_tl160408160451_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160406160444_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160408160451_))
                            (let ((_g161464_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160408160451_
                                      '0))))
                              (begin
                                (let ((_g161465_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161464_)
                                             (##vector-length _g161464_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161465_ 2)))
                                      (error "Context expects 2 values"
                                             _g161465_)))
                                (let ((_target160409160454_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161464_ 0)))
                                      (_tl160411160457_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161464_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160411160457_))
                                      (letrec ((_loop160412160460_
                                                (lambda (_hd160410160464_
                                                         _arity160416160467_
                                                         _prim160417160469_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160410160464_))
                                                      (let ((_e160413160472_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160410160464_))))
                (let ((_lp-hd160414160476_
                       (let () (declare (not safe)) (##car _e160413160472_)))
                      (_lp-tl160415160479_
                       (let () (declare (not safe)) (##cdr _e160413160472_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160414160476_))
                      (let ((_e160420160482_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160414160476_))))
                        (let ((_hd160421160486_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160420160482_)))
                              (_tl160422160489_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160420160482_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160422160489_))
                              (let ((_g161466_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160422160489_
                                        '0))))
                                (begin
                                  (let ((_g161467_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161466_)
                                               (##vector-length _g161466_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161467_ 2)))
                                        (error "Context expects 2 values"
                                               _g161467_)))
                                  (let ((_target160423160492_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161466_ 0)))
                                        (_tl160425160495_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161466_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160425160495_))
                                        (letrec ((_loop160426160498_
                                                  (lambda (_hd160424160502_
                                                           _arity160430160505_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160424160502_))
                                                        (let ((_e160427160508_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160424160502_))))
                  (let ((_lp-hd160428160512_
                         (let () (declare (not safe)) (##car _e160427160508_)))
                        (_lp-tl160429160515_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160427160508_))))
                    (_loop160426160498_
                     _lp-tl160429160515_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160428160512_ _arity160430160505_)))))
                (let ((_arity160431160518_ (reverse _arity160430160505_)))
                  (_loop160412160460_
                   _lp-tl160415160479_
                   (let ()
                     (declare (not safe))
                     (cons _arity160431160518_ _arity160416160467_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160421160486_ _prim160417160469_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160426160498_
                                           _target160423160492_
                                           '()))
                                        (_g160402160437_ _g160403160441_)))))
                              (_g160402160437_ _g160403160441_))))
                      (_g160402160437_ _g160403160441_))))
              (let ((_arity160418160522_ (reverse _arity160416160467_))
                    (_prim160419160525_ (reverse _prim160417160469_)))
                ((lambda (_L160528_ _L160530_)
                   (let ((__tmp161475
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161468
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160528_
                               _L160530_))
                            (let ((__tmp161469
                                   (lambda (_g160545160551_
                                            _g160546160554_
                                            _g160547160556_)
                                     (let ((__tmp161470
                                            (let ((__tmp161474
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp161471
                                                   (let ((__tmp161472
                                                          (let ((__tmp161473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g160548160559_ _g160549160562_)
                           (let ()
                             (declare (not safe))
                             (cons _g160548160559_ _g160549160562_)))))
                    (declare (not safe))
                    (foldr1 __tmp161473 '() _g160545160551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160546160554_
                                                           __tmp161472))))
                                              (declare (not safe))
                                              (cons __tmp161474 __tmp161471))))
                                       (declare (not safe))
                                       (cons __tmp161470 _g160547160556_)))))
                              (declare (not safe))
                              (foldr2 __tmp161469 '() _L160528_ _L160530_)))))
                     (declare (not safe))
                     (cons __tmp161475 __tmp161468)))
                 _arity160418160522_
                 _prim160419160525_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160412160460_
                                         _target160409160454_
                                         '()
                                         '()))
                                      (_g160402160437_ _g160403160441_)))))
                            (_g160402160437_ _g160403160441_))))
                    (_g160402160437_ _g160403160441_)))))
        (_g160401160565_ _$stx160398_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx160571_)
      (let* ((_g160575160610_
              (lambda (_g160576160606_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160576160606_))))
             (_g160574160738_
              (lambda (_g160576160614_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160576160614_))
                    (let ((_e160579160617_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160576160614_))))
                      (let ((_hd160580160621_
                             (let ()
                               (declare (not safe))
                               (##car _e160579160617_)))
                            (_tl160581160624_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160579160617_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160581160624_))
                            (let ((_g161476_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160581160624_
                                      '0))))
                              (begin
                                (let ((_g161477_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161476_)
                                             (##vector-length _g161476_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161477_ 2)))
                                      (error "Context expects 2 values"
                                             _g161477_)))
                                (let ((_target160582160627_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161476_ 0)))
                                      (_tl160584160630_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161476_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160584160630_))
                                      (letrec ((_loop160585160633_
                                                (lambda (_hd160583160637_
                                                         _arity160589160640_
                                                         _prim160590160642_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160583160637_))
                                                      (let ((_e160586160645_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160583160637_))))
                (let ((_lp-hd160587160649_
                       (let () (declare (not safe)) (##car _e160586160645_)))
                      (_lp-tl160588160652_
                       (let () (declare (not safe)) (##cdr _e160586160645_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160587160649_))
                      (let ((_e160593160655_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160587160649_))))
                        (let ((_hd160594160659_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160593160655_)))
                              (_tl160595160662_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160593160655_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160595160662_))
                              (let ((_g161478_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160595160662_
                                        '0))))
                                (begin
                                  (let ((_g161479_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161478_)
                                               (##vector-length _g161478_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161479_ 2)))
                                        (error "Context expects 2 values"
                                               _g161479_)))
                                  (let ((_target160596160665_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161478_ 0)))
                                        (_tl160598160668_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161478_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160598160668_))
                                        (letrec ((_loop160599160671_
                                                  (lambda (_hd160597160675_
                                                           _arity160603160678_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160597160675_))
                                                        (let ((_e160600160681_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160597160675_))))
                  (let ((_lp-hd160601160685_
                         (let () (declare (not safe)) (##car _e160600160681_)))
                        (_lp-tl160602160688_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160600160681_))))
                    (_loop160599160671_
                     _lp-tl160602160688_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160601160685_ _arity160603160678_)))))
                (let ((_arity160604160691_ (reverse _arity160603160678_)))
                  (_loop160585160633_
                   _lp-tl160588160652_
                   (let ()
                     (declare (not safe))
                     (cons _arity160604160691_ _arity160589160640_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160594160659_ _prim160590160642_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160599160671_
                                           _target160596160665_
                                           '()))
                                        (_g160575160610_ _g160576160614_)))))
                              (_g160575160610_ _g160576160614_))))
                      (_g160575160610_ _g160576160614_))))
              (let ((_arity160591160695_ (reverse _arity160589160640_))
                    (_prim160592160698_ (reverse _prim160590160642_)))
                ((lambda (_L160701_ _L160703_)
                   (let ((__tmp161487
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161480
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160701_
                               _L160703_))
                            (let ((__tmp161481
                                   (lambda (_g160718160724_
                                            _g160719160727_
                                            _g160720160729_)
                                     (let ((__tmp161482
                                            (let ((__tmp161486
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp161483
                                                   (let ((__tmp161484
                                                          (let ((__tmp161485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g160721160732_ _g160722160735_)
                           (let ()
                             (declare (not safe))
                             (cons _g160721160732_ _g160722160735_)))))
                    (declare (not safe))
                    (foldr1 __tmp161485 '() _g160718160724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160719160727_
                                                           __tmp161484))))
                                              (declare (not safe))
                                              (cons __tmp161486 __tmp161483))))
                                       (declare (not safe))
                                       (cons __tmp161482 _g160720160729_)))))
                              (declare (not safe))
                              (foldr2 __tmp161481 '() _L160701_ _L160703_)))))
                     (declare (not safe))
                     (cons __tmp161487 __tmp161480)))
                 _arity160591160695_
                 _prim160592160698_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160585160633_
                                         _target160582160627_
                                         '()
                                         '()))
                                      (_g160575160610_ _g160576160614_)))))
                            (_g160575160610_ _g160576160614_))))
                    (_g160575160610_ _g160576160614_)))))
        (_g160574160738_ _$stx160571_)))))
