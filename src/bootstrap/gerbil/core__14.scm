(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-syntax-sugar>[:0:]#identifier-rules|
    (lambda (_$stx33723_)
      (let* ((_g3372733738_
              (lambda (_g3372833734_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3372833734_)))
             (_g3372633768_
              (lambda (_g3372833742_)
                (if (gx#stx-pair? _g3372833742_)
                    (let ((_e3373233745_ (gx#syntax-e _g3372833742_)))
                      (let ((_hd3373133749_
                             (let ()
                               (declare (not safe))
                               (##car _e3373233745_)))
                            (_tl3373033752_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3373233745_))))
                        ((lambda (_L33755_)
                           (cons (gx#datum->syntax '#f 'make-setq-macro)
                                 (cons 'macro:
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-rules)
                                                   _L33755_)
                                             '()))))
                         _tl3373033752_)))
                    (_g3372733738_ _g3372833742_)))))
        (_g3372633768_ _$stx33723_))))
  (define |gerbil/core$<more-syntax-sugar>[:0:]#quasisyntax|
    (lambda (_$stx33772_)
      (let ((_g3377533782_
             (lambda (_g3377633778_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g3377633778_))))
        (_g3377533782_ _$stx33772_)))))
