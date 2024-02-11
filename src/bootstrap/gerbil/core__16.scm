(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gerbil/core$<special>[:0:]#eval-when-compile|
  (lambda (_stx37133_)
    (let* ((_g3713637150_
            (lambda (_g3713737146_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; invalid match target"
               _g3713737146_)))
           (_g3713537192_
            (lambda (_g3713737154_)
              (if (gx#stx-pair? _g3713737154_)
                  (let ((_e3714137157_ (gx#syntax-e _g3713737154_)))
                    (let ((_hd3714037161_
                           (let () (declare (not safe)) (##car _e3714137157_)))
                          (_tl3713937164_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3714137157_))))
                      (if (gx#stx-pair? _tl3713937164_)
                          (let ((_e3714437167_ (gx#syntax-e _tl3713937164_)))
                            (let ((_hd3714337171_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3714437167_)))
                                  (_tl3714237174_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3714437167_))))
                              (if (gx#stx-null? _tl3714237174_)
                                  ((lambda (_L37177_)
                                     (if (gx#current-expander-compiling?)
                                         (gx#eval-syntax _L37177_)
                                         '#!void)
                                     (let ((__tmp50966
                                            (gx#datum->syntax '#f 'void)))
                                       (declare (not safe))
                                       (cons __tmp50966 '())))
                                   _hd3714337171_)
                                  (_g3713637150_ _g3713737154_))))
                          (_g3713637150_ _g3713737154_))))
                  (_g3713637150_ _g3713737154_)))))
      (_g3713537192_ _stx37133_))))
