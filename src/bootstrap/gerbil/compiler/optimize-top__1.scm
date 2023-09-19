(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx20354_)
    (let* ((_g2035820387_
            (lambda (_g2035920383_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g2035920383_)))
           (_g2035720488_
            (lambda (_g2035920391_)
              (if (gx#stx-pair? _g2035920391_)
                  (let ((_e2036220394_ (gx#syntax-e _g2035920391_)))
                    (let ((_hd2036320398_
                           (let () (declare (not safe)) (##car _e2036220394_)))
                          (_tl2036420401_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2036220394_))))
                      (if (gx#stx-pair/null? _tl2036420401_)
                          (let ((_g34558_
                                 (gx#syntax-split-splice _tl2036420401_ '0)))
                            (begin
                              (let ((_g34559_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g34558_)
                                           (##vector-length _g34558_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g34559_ 2)))
                                    (error "Context expects 2 values"
                                           _g34559_)))
                              (let ((_target2036520404_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g34558_ 0)))
                                    (_tl2036720407_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g34558_ 1))))
                                (if (gx#stx-null? _tl2036720407_)
                                    (letrec ((_loop2036820410_
                                              (lambda (_hd2036620414_
                                                       _type-e2037220417_
                                                       _id2037320419_)
                                                (if (gx#stx-pair?
                                                     _hd2036620414_)
                                                    (let ((_e2036920422_
                                                           (gx#syntax-e
                                                            _hd2036620414_)))
                                                      (let ((_lp-hd2037020426_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e2036920422_)))
                    (_lp-tl2037120429_
                     (let () (declare (not safe)) (##cdr _e2036920422_))))
                (if (gx#stx-pair? _lp-hd2037020426_)
                    (let ((_e2037620432_ (gx#syntax-e _lp-hd2037020426_)))
                      (let ((_hd2037720436_
                             (let ()
                               (declare (not safe))
                               (##car _e2037620432_)))
                            (_tl2037820439_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2037620432_))))
                        (if (gx#stx-pair? _tl2037820439_)
                            (let ((_e2037920442_ (gx#syntax-e _tl2037820439_)))
                              (let ((_hd2038020446_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2037920442_)))
                                    (_tl2038120449_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2037920442_))))
                                (if (gx#stx-null? _tl2038120449_)
                                    (_loop2036820410_
                                     _lp-tl2037120429_
                                     (cons _hd2038020446_ _type-e2037220417_)
                                     (cons _hd2037720436_ _id2037320419_))
                                    (_g2035820387_ _g2035920391_))))
                            (_g2035820387_ _g2035920391_))))
                    (_g2035820387_ _g2035920391_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e2037420452_
                                                           (reverse _type-e2037220417_))
                                                          (_id2037520455_
                                                           (reverse _id2037320419_)))
                                                      ((lambda (_L20458_
                                                                _L20460_)
                                                         (cons (gx#datum->syntax__0
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L20458_ _L20460_)
                         (foldr2 (lambda (_g2047620480_
                                          _g2047720483_
                                          _g2047820485_)
                                   (cons (cons (gx#datum->syntax__0
                                                '#f
                                                'hash-put!)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'basic-expression-type-builtin)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _g2047720483_ '()))
                   (cons _g2047620480_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g2047820485_))
                                 '()
                                 _L20458_
                                 _L20460_))))
               _type-e2037420452_
               _id2037520455_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop2036820410_
                                       _target2036520404_
                                       '()
                                       '()))
                                    (_g2035820387_ _g2035920391_)))))
                          (_g2035820387_ _g2035920391_))))
                  (_g2035820387_ _g2035920391_)))))
      (_g2035720488_ _$stx20354_))))
