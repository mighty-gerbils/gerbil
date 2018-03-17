(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/exact#exact-integer?__impl
    (lambda (_obj581_)
      (let ((_$e583_ (fixnum? _obj581_)))
        (if _$e583_ _$e583_ (##bignum? _obj581_)))))
  (define gerbil/gambit/exact#exact-integer-sqrt
    (lambda (_y571_)
      (if (if ((lambda (_obj573_)
                 (let ((_$e576_ (fixnum? _obj573_)))
                   (if _$e576_ _$e576_ (##bignum? _obj573_))))
               _y571_)
              (not (negative? _y571_))
              '#f)
          (let ((_s-r579_ (##exact-int.sqrt _y571_)))
            (values (car _s-r579_) (cdr _s-r579_)))
          (error '"exact-integer-sqrt: Argument is not a nonnegative exact integer: "
                 _y571_)))))
