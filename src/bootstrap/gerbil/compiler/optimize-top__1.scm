(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#defbasic-expression-type-builtin|
  (lambda (_$stx20373_)
    (let* ((_g2037720406_
            (lambda (_g2037820402_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g2037820402_)))
           (_g2037620507_
            (lambda (_g2037820410_)
              (if (gx#stx-pair? _g2037820410_)
                  (let ((_e2038120413_ (gx#syntax-e _g2037820410_)))
                    (let ((_hd2038220417_
                           (let () (declare (not safe)) (##car _e2038120413_)))
                          (_tl2038320420_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2038120413_))))
                      (if (gx#stx-pair/null? _tl2038320420_)
                          (let ((_g34577_
                                 (gx#syntax-split-splice _tl2038320420_ '0)))
                            (begin
                              (let ((_g34578_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g34577_)
                                           (##vector-length _g34577_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g34578_ 2)))
                                    (error "Context expects 2 values"
                                           _g34578_)))
                              (let ((_target2038420423_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g34577_ 0)))
                                    (_tl2038620426_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g34577_ 1))))
                                (if (gx#stx-null? _tl2038620426_)
                                    (letrec ((_loop2038720429_
                                              (lambda (_hd2038520433_
                                                       _type-e2039120436_
                                                       _id2039220438_)
                                                (if (gx#stx-pair?
                                                     _hd2038520433_)
                                                    (let ((_e2038820441_
                                                           (gx#syntax-e
                                                            _hd2038520433_)))
                                                      (let ((_lp-hd2038920445_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e2038820441_)))
                    (_lp-tl2039020448_
                     (let () (declare (not safe)) (##cdr _e2038820441_))))
                (if (gx#stx-pair? _lp-hd2038920445_)
                    (let ((_e2039520451_ (gx#syntax-e _lp-hd2038920445_)))
                      (let ((_hd2039620455_
                             (let ()
                               (declare (not safe))
                               (##car _e2039520451_)))
                            (_tl2039720458_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2039520451_))))
                        (if (gx#stx-pair? _tl2039720458_)
                            (let ((_e2039820461_ (gx#syntax-e _tl2039720458_)))
                              (let ((_hd2039920465_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2039820461_)))
                                    (_tl2040020468_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2039820461_))))
                                (if (gx#stx-null? _tl2040020468_)
                                    (_loop2038720429_
                                     _lp-tl2039020448_
                                     (cons _hd2039920465_ _type-e2039120436_)
                                     (cons _hd2039620455_ _id2039220438_))
                                    (_g2037720406_ _g2037820410_))))
                            (_g2037720406_ _g2037820410_))))
                    (_g2037720406_ _g2037820410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_type-e2039320471_
                                                           (reverse _type-e2039120436_))
                                                          (_id2039420474_
                                                           (reverse _id2039220438_)))
                                                      ((lambda (_L20477_
                                                                _L20479_)
                                                         (cons (gx#datum->syntax__0
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L20477_ _L20479_)
                         (foldr2 (lambda (_g2049520499_
                                          _g2049620502_
                                          _g2049720504_)
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
                         (cons _g2049620502_ '()))
                   (cons _g2049520499_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _g2049720504_))
                                 '()
                                 _L20477_
                                 _L20479_))))
               _type-e2039320471_
               _id2039420474_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop2038720429_
                                       _target2038420423_
                                       '()
                                       '()))
                                    (_g2037720406_ _g2037820410_)))))
                          (_g2037720406_ _g2037820410_))))
                  (_g2037720406_ _g2037820410_)))))
      (_g2037620507_ _$stx20373_))))
