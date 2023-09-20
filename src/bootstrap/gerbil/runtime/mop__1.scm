(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |[:0:]#__slot-e|
  (lambda (_$stx8252_)
    (let* ((_g82568282_
            (lambda (_g82578278_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g82578278_)))
           (_g82558366_
            (lambda (_g82578286_)
              (if (gx#stx-pair? _g82578286_)
                  (let ((_e82628289_ (gx#syntax-e _g82578286_)))
                    (let ((_hd82638293_
                           (let () (declare (not safe)) (##car _e82628289_)))
                          (_tl82648296_
                           (let () (declare (not safe)) (##cdr _e82628289_))))
                      (if (gx#stx-pair? _tl82648296_)
                          (let ((_e82658299_ (gx#syntax-e _tl82648296_)))
                            (let ((_hd82668303_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e82658299_)))
                                  (_tl82678306_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e82658299_))))
                              (if (gx#stx-pair? _tl82678306_)
                                  (let ((_e82688309_
                                         (gx#syntax-e _tl82678306_)))
                                    (let ((_hd82698313_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e82688309_)))
                                          (_tl82708316_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e82688309_))))
                                      (if (gx#stx-pair? _tl82708316_)
                                          (let ((_e82718319_
                                                 (gx#syntax-e _tl82708316_)))
                                            (let ((_hd82728323_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e82718319_)))
                                                  (_tl82738326_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e82718319_))))
                                              (if (gx#stx-pair? _tl82738326_)
                                                  (let ((_e82748329_
                                                         (gx#syntax-e
                                                          _tl82738326_)))
                                                    (let ((_hd82758333_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e82748329_)))
                                                          (_tl82768336_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e82748329_))))
                                                      (if (gx#stx-null?
                                                           _tl82768336_)
                                                          ((lambda (_L8339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L8341_
                            _L8342_
                            _L8343_)
                     (cons (gx#datum->syntax '#f 'if)
                           (cons (cons (gx#datum->syntax '#f 'object?)
                                       (cons _L8343_ '()))
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'klass)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'object-type)
                             (cons _L8343_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'cond)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          'and)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'type-descriptor?)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'klass)
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'class-slot-offset)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'klass)
                         (cons _L8342_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (gx#datum->syntax '#f '=>)
                                         (cons _L8341_ '())))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons _L8339_
                                                     (cons _L8343_
                                                           (cons _L8342_ '())))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons (cons _L8339_
                                                   (cons _L8343_
                                                         (cons _L8342_ '())))
                                             '())))))
                   _hd82758333_
                   _hd82728323_
                   _hd82698313_
                   _hd82668303_)
                  (_g82568282_ _g82578286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82568282_ _g82578286_))))
                                          (_g82568282_ _g82578286_))))
                                  (_g82568282_ _g82578286_))))
                          (_g82568282_ _g82578286_))))
                  (_g82568282_ _g82578286_)))))
      (_g82558366_ _$stx8252_))))
