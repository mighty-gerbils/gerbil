(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/exact#exact-integer?__impl
    (lambda (_obj526_)
      (let ((_$e528_ (fixnum? _obj526_)))
        (if _$e528_ _$e528_ (##bignum? _obj526_)))))
  (define gerbil/gambit/exact#exact-integer-sqrt
    (lambda (_y516_)
      (if (if ((lambda (_obj518_)
                 (let ((_$e521_ (fixnum? _obj518_)))
                   (if _$e521_ _$e521_ (##bignum? _obj518_))))
               _y516_)
              (not (negative? _y516_))
              '#f)
          (let ((_s-r524_ (##exact-int.sqrt _y516_)))
            (values (car _s-r524_) (cdr _s-r524_)))
          (error '"exact-integer-sqrt: Argument is not a nonnegative exact integer: "
                 _y516_)))))
