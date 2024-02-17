(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#defbasic-expression-type-annotations|
    (lambda (_$stx222177_)
      (let* ((_g222181222210_
              (lambda (_g222182222206_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g222182222206_))))
             (_g222180222311_
              (lambda (_g222182222214_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g222182222214_))
                    (let ((_e222187222217_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g222182222214_))))
                      (let ((_hd222186222221_
                             (let ()
                               (declare (not safe))
                               (##car _e222187222217_)))
                            (_tl222185222224_
                             (let ()
                               (declare (not safe))
                               (##cdr _e222187222217_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl222185222224_))
                            (let ((_g237187_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl222185222224_
                                      '0))))
                              (begin
                                (let ((_g237188_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g237187_)
                                             (##vector-length _g237187_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g237188_ 2)))
                                      (error "Context expects 2 values"
                                             _g237188_)))
                                (let ((_target222188222227_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g237187_ 0)))
                                      (_tl222190222230_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g237187_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222190222230_))
                                      (letrec ((_loop222191222233_
                                                (lambda (_hd222189222237_
                                                         _type-e222195222240_
                                                         _id222196222242_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd222189222237_))
                                                      (let ((_e222192222245_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd222189222237_))))
                (let ((_lp-hd222193222249_
                       (let () (declare (not safe)) (##car _e222192222245_)))
                      (_lp-tl222194222252_
                       (let () (declare (not safe)) (##cdr _e222192222245_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd222193222249_))
                      (let ((_e222201222255_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd222193222249_))))
                        (let ((_hd222200222259_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222201222255_)))
                              (_tl222199222262_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222201222255_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222199222262_))
                              (let ((_e222204222265_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl222199222262_))))
                                (let ((_hd222203222269_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222204222265_)))
                                      (_tl222202222272_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222204222265_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222202222272_))
                                      (_loop222191222233_
                                       _lp-tl222194222252_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd222203222269_
                                               _type-e222195222240_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd222200222259_
                                               _id222196222242_)))
                                      (_g222181222210_ _g222182222214_))))
                              (_g222181222210_ _g222182222214_))))
                      (_g222181222210_ _g222182222214_))))
              (let ((_type-e222197222275_ (reverse _type-e222195222240_))
                    (_id222198222278_ (reverse _id222196222242_)))
                ((lambda (_L222281_ _L222283_)
                   (let ((__tmp237200
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp237189
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L222281_
                               _L222283_))
                            (let ((__tmp237190
                                   (lambda (_g222299222303_
                                            _g222300222306_
                                            _g222301222308_)
                                     (let ((__tmp237191
                                            (let ((__tmp237199
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp237192
                                                   (let ((__tmp237198
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-annotations)))
                                                         (__tmp237193
                                                          (let ((__tmp237195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp237197
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp237196
                                (let ()
                                  (declare (not safe))
                                  (cons _g222300222306_ '()))))
                           (declare (not safe))
                           (cons __tmp237197 __tmp237196)))
                        (__tmp237194
                         (let ()
                           (declare (not safe))
                           (cons _g222299222303_ '()))))
                    (declare (not safe))
                    (cons __tmp237195 __tmp237194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp237198
                                                           __tmp237193))))
                                              (declare (not safe))
                                              (cons __tmp237199 __tmp237192))))
                                       (declare (not safe))
                                       (cons __tmp237191 _g222301222308_)))))
                              (declare (not safe))
                              (foldr2 __tmp237190 '() _L222281_ _L222283_)))))
                     (declare (not safe))
                     (cons __tmp237200 __tmp237189)))
                 _type-e222197222275_
                 _id222198222278_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop222191222233_
                                         _target222188222227_
                                         '()
                                         '()))
                                      (_g222181222210_ _g222182222214_)))))
                            (_g222181222210_ _g222182222214_))))
                    (_g222181222210_ _g222182222214_)))))
        (_g222180222311_ _$stx222177_))))
  (define |gxc[:0:]#defbasic-expression-type-builtin|
    (lambda (_$stx222316_)
      (let* ((_g222320222349_
              (lambda (_g222321222345_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g222321222345_))))
             (_g222319222449_
              (lambda (_g222321222353_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g222321222353_))
                    (let ((_e222326222356_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g222321222353_))))
                      (let ((_hd222325222360_
                             (let ()
                               (declare (not safe))
                               (##car _e222326222356_)))
                            (_tl222324222363_
                             (let ()
                               (declare (not safe))
                               (##cdr _e222326222356_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl222324222363_))
                            (let ((_g237201_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl222324222363_
                                      '0))))
                              (begin
                                (let ((_g237202_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g237201_)
                                             (##vector-length _g237201_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g237202_ 2)))
                                      (error "Context expects 2 values"
                                             _g237202_)))
                                (let ((_target222327222366_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g237201_ 0)))
                                      (_tl222329222369_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g237201_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222329222369_))
                                      (letrec ((_loop222330222372_
                                                (lambda (_hd222328222376_
                                                         _type-e222334222379_
                                                         _id222335222381_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd222328222376_))
                                                      (let ((_e222331222384_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd222328222376_))))
                (let ((_lp-hd222332222388_
                       (let () (declare (not safe)) (##car _e222331222384_)))
                      (_lp-tl222333222391_
                       (let () (declare (not safe)) (##cdr _e222331222384_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd222332222388_))
                      (let ((_e222340222394_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd222332222388_))))
                        (let ((_hd222339222398_
                               (let ()
                                 (declare (not safe))
                                 (##car _e222340222394_)))
                              (_tl222338222401_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e222340222394_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl222338222401_))
                              (let ((_e222343222404_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl222338222401_))))
                                (let ((_hd222342222408_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e222343222404_)))
                                      (_tl222341222411_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e222343222404_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl222341222411_))
                                      (_loop222330222372_
                                       _lp-tl222333222391_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd222342222408_
                                               _type-e222334222379_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd222339222398_
                                               _id222335222381_)))
                                      (_g222320222349_ _g222321222353_))))
                              (_g222320222349_ _g222321222353_))))
                      (_g222320222349_ _g222321222353_))))
              (let ((_type-e222336222414_ (reverse _type-e222334222379_))
                    (_id222337222417_ (reverse _id222335222381_)))
                ((lambda (_L222420_ _L222422_)
                   (let ((__tmp237214
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp237203
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L222420_
                               _L222422_))
                            (let ((__tmp237204
                                   (lambda (_g222437222441_
                                            _g222438222444_
                                            _g222439222446_)
                                     (let ((__tmp237205
                                            (let ((__tmp237213
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)))
                                                  (__tmp237206
                                                   (let ((__tmp237212
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'basic-expression-type-builtin)))
                                                         (__tmp237207
                                                          (let ((__tmp237209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp237211
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp237210
                                (let ()
                                  (declare (not safe))
                                  (cons _g222438222444_ '()))))
                           (declare (not safe))
                           (cons __tmp237211 __tmp237210)))
                        (__tmp237208
                         (let ()
                           (declare (not safe))
                           (cons _g222437222441_ '()))))
                    (declare (not safe))
                    (cons __tmp237209 __tmp237208))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp237212
                                                           __tmp237207))))
                                              (declare (not safe))
                                              (cons __tmp237213 __tmp237206))))
                                       (declare (not safe))
                                       (cons __tmp237205 _g222439222446_)))))
                              (declare (not safe))
                              (foldr2 __tmp237204 '() _L222420_ _L222422_)))))
                     (declare (not safe))
                     (cons __tmp237214 __tmp237203)))
                 _type-e222336222414_
                 _id222337222417_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop222330222372_
                                         _target222327222366_
                                         '()
                                         '()))
                                      (_g222320222349_ _g222321222353_)))))
                            (_g222320222349_ _g222321222353_))))
                    (_g222320222349_ _g222321222353_)))))
        (_g222319222449_ _$stx222316_)))))
