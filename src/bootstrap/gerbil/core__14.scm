(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx33816_)
      (let* ((_g3382033831_
              (lambda (_g3382133827_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3382133827_)))
             (_g3381933861_
              (lambda (_g3382133835_)
                (if (gx#stx-pair? _g3382133835_)
                    (let ((_e3382533838_ (gx#syntax-e _g3382133835_)))
                      (let ((_hd3382433842_
                             (let ()
                               (declare (not safe))
                               (##car _e3382533838_)))
                            (_tl3382333845_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3382533838_))))
                        ((lambda (_L33848_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L33848_)
                                             '()))))
                         _tl3382333845_)))
                    (_g3382033831_ _g3382133835_)))))
        (_g3381933861_ _$stx33816_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx33865_)
      (let ((_g3386833875_
             (lambda (_g3386933871_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3386933871_))))
        (_g3386833875_ _$stx33865_)))))
