(declare (block) (standard-bindings) (extended-bindings))
(define |gerbil/gambit/bytes[:0:]#@bytes|
  (lambda (_stx406_)
    (let ((_g409423_
           (lambda (_g410419_)
             (gx#raise-syntax-error '#f '"Bad syntax" _g410419_))))
      (let ((_g408498_
             (lambda (_g410427_)
               (if (gx#stx-pair? _g410427_)
                   (let ((_e412430_ (gx#syntax-e _g410427_)))
                     (let ((_hd413434_ (##car _e412430_))
                           (_tl414437_ (##cdr _e412430_)))
                       (if (gx#stx-pair? _tl414437_)
                           (let ((_e415440_ (gx#syntax-e _tl414437_)))
                             (let ((_hd416444_ (##car _e415440_))
                                   (_tl417447_ (##cdr _e415440_)))
                               (if (gx#stx-null? _tl417447_)
                                   ((lambda (_L450_)
                                      (if (gx#stx-string? _L450_)
                                          (let ((_g467475_
                                                 (lambda (_g468471_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g468471_))))
                                            (let ((_g466494_
                                                   (lambda (_g468479_)
                                                     ((lambda (_L482_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L482_ '()))))
              _g468479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g466494_
                                               (string->bytes
                                                (gx#stx-e _L450_)))))
                                          (_g409423_ _g410427_)))
                                    _hd416444_)
                                   (_g409423_ _g410427_))))
                           (_g409423_ _g410427_))))
                   (_g409423_ _g410427_)))))
        (_g408498_ _stx406_)))))
