(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/exact#exact-integer?__impl
    (lambda (_obj579_)
      (let ((_$e581_ (fixnum? _obj579_)))
        (if _$e581_ _$e581_ (##bignum? _obj579_)))))
  (define gerbil/gambit/exact#exact-integer-sqrt
    (lambda (_y569_)
      (if (if ((lambda (_obj571_)
                 (let ((_$e574_ (fixnum? _obj571_)))
                   (if _$e574_ _$e574_ (##bignum? _obj571_))))
               _y569_)
              (not (negative? _y569_))
              '#f)
          (let ((_s-r577_ (##exact-int.sqrt _y569_)))
            (values (car _s-r577_) (cdr _s-r577_)))
          (error '"exact-integer-sqrt: Argument is not a nonnegative exact integer: "
                 _y569_)))))
