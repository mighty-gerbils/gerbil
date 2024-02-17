(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx222180_)
      (let* ((_g222184222213_
              (lambda (_g222185222209_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g222185222209_))))
             (_g222183222314_
              (lambda (_g222185222217_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g222185222217_))
                    (let ((_e222190222220_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g222185222217_))))
                      (let ((_hd222189222224_
                             (let ()
                               (declare (not safe))
                               (##car _e222190222220_)))
                            (_tl222188222227_
                             (let ()
                               (declare (not safe))
                               (##cdr _e222190222220_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl222188222227_))
                            (let ((_g237190_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl222188222227_
                                      '0))))
                              (begin
                                (let ((_g237191_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g237190_)
                                             (##vector-length _g237190_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g237191_ 2)))
                                      (error "Context expects 2 values"
                                             _g237191_)))
                                (let ((_target222191222230_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g237190_ 0)))
                                      (_tl222193222233_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g237190_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222193222233_))
                                      (letrec ((_loop222194222236_
                                                (lambda (_hd222192222240_
                                                         _type-e222198222243_
                                                         _id222199222245_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd222192222240_))
                                                      (let ((_e222195222248_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd222192222240_))))
                (let ((_lp-hd222196222252_
                       (let () (declare (not safe)) (##car _e222195222248_)))
                      (_lp-tl222197222255_
                       (let () (declare (not safe)) (##cdr _e222195222248_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd222196222252_))
                      (let ((_e222204222258_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd222196222252_))))
                        (let ((_hd222203222262_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222204222258_)))
                              (_tl222202222265_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222204222258_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222202222265_))
                              (let ((_e222207222268_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl222202222265_))))
                                (let ((_hd222206222272_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222207222268_)))
                                      (_tl222205222275_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222207222268_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222205222275_))
                                      (_loop222194222236_
                                       _lp-tl222197222255_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd222206222272_
                                               _type-e222198222243_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd222203222262_
                                               _id222199222245_)))
                                      (_g222184222213_ _g222185222217_))))
                              (_g222184222213_ _g222185222217_))))
                      (_g222184222213_ _g222185222217_))))
              (let ((_type-e222200222278_ (reverse _type-e222198222243_))
                    (_id222201222281_ (reverse _id222199222245_)))
                ((lambda (_L222284_ _L222286_)
                   (let ((__tmp237203
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp237192
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L222284_
                               _L222286_))
                            (let ((__tmp237193
                                   (lambda (_g222302222306_
                                            _g222303222309_
                                            _g222304222311_)
                                     (let ((__tmp237194
                                            (let ((__tmp237202
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp237195
                                                   (let ((__tmp237201
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp237196
                                                          (let ((__tmp237198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp237200
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp237199
                                (let ()
                                  (declare (not safe))
                                  (cons _g222303222309_ '()))))
                           (declare (not safe))
                           (cons __tmp237200 __tmp237199)))
                        (__tmp237197
                         (let ()
                           (declare (not safe))
                           (cons _g222302222306_ '()))))
                    (declare (not safe))
                    (cons __tmp237198 __tmp237197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp237201
                                                           __tmp237196))))
                                              (declare (not safe))
                                              (cons __tmp237202 __tmp237195))))
                                       (declare (not safe))
                                       (cons __tmp237194 _g222304222311_)))))
                              (declare (not safe))
                              (foldr2 __tmp237193 '() _L222284_ _L222286_)))))
                     (declare (not safe))
                     (cons __tmp237203 __tmp237192)))
                 _type-e222200222278_
                 _id222201222281_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop222194222236_
                                         _target222191222230_
                                         '()
                                         '()))
                                      (_g222184222213_ _g222185222217_)))))
                            (_g222184222213_ _g222185222217_))))
                    (_g222184222213_ _g222185222217_)))))
        (_g222183222314_ _$stx222180_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx222319_)
      (let* ((_g222323222352_
              (lambda (_g222324222348_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g222324222348_))))
             (_g222322222452_
              (lambda (_g222324222356_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g222324222356_))
                    (let ((_e222329222359_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g222324222356_))))
                      (let ((_hd222328222363_
                             (let ()
                               (declare (not safe))
                               (##car _e222329222359_)))
                            (_tl222327222366_
                             (let ()
                               (declare (not safe))
                               (##cdr _e222329222359_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl222327222366_))
                            (let ((_g237204_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl222327222366_
                                      '0))))
                              (begin
                                (let ((_g237205_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g237204_)
                                             (##vector-length _g237204_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g237205_ 2)))
                                      (error "Context expects 2 values"
                                             _g237205_)))
                                (let ((_target222330222369_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g237204_ 0)))
                                      (_tl222332222372_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g237204_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222332222372_))
                                      (letrec ((_loop222333222375_
                                                (lambda (_hd222331222379_
                                                         _type-e222337222382_
                                                         _id222338222384_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd222331222379_))
                                                      (let ((_e222334222387_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd222331222379_))))
                (let ((_lp-hd222335222391_
                       (let () (declare (not safe)) (##car _e222334222387_)))
                      (_lp-tl222336222394_
                       (let () (declare (not safe)) (##cdr _e222334222387_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd222335222391_))
                      (let ((_e222343222397_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd222335222391_))))
                        (let ((_hd222342222401_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222343222397_)))
                              (_tl222341222404_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222343222397_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222341222404_))
                              (let ((_e222346222407_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl222341222404_))))
                                (let ((_hd222345222411_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222346222407_)))
                                      (_tl222344222414_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222346222407_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222344222414_))
                                      (_loop222333222375_
                                       _lp-tl222336222394_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd222345222411_
                                               _type-e222337222382_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd222342222401_
                                               _id222338222384_)))
                                      (_g222323222352_ _g222324222356_))))
                              (_g222323222352_ _g222324222356_))))
                      (_g222323222352_ _g222324222356_))))
              (let ((_type-e222339222417_ (reverse _type-e222337222382_))
                    (_id222340222420_ (reverse _id222338222384_)))
                ((lambda (_L222423_ _L222425_)
                   (let ((__tmp237217
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp237206
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L222423_
                               _L222425_))
                            (let ((__tmp237207
                                   (lambda (_g222440222444_
                                            _g222441222447_
                                            _g222442222449_)
                                     (let ((__tmp237208
                                            (let ((__tmp237216
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp237209
                                                   (let ((__tmp237215
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp237210
                                                          (let ((__tmp237212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp237214
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp237213
                                (let ()
                                  (declare (not safe))
                                  (cons _g222441222447_ '()))))
                           (declare (not safe))
                           (cons __tmp237214 __tmp237213)))
                        (__tmp237211
                         (let ()
                           (declare (not safe))
                           (cons _g222440222444_ '()))))
                    (declare (not safe))
                    (cons __tmp237212 __tmp237211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp237215
                                                           __tmp237210))))
                                              (declare (not safe))
                                              (cons __tmp237216 __tmp237209))))
                                       (declare (not safe))
                                       (cons __tmp237208 _g222442222449_)))))
                              (declare (not safe))
                              (foldr2 __tmp237207 '() _L222423_ _L222425_)))))
                     (declare (not safe))
                     (cons __tmp237217 __tmp237206)))
                 _type-e222339222417_
                 _id222340222420_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop222333222375_
                                         _target222330222369_
                                         '()
                                         '()))
                                      (_g222323222352_ _g222324222356_)))))
                            (_g222323222352_ _g222324222356_))))
                    (_g222323222352_ _g222324222356_)))))
        (_g222322222452_ _$stx222319_)))))
