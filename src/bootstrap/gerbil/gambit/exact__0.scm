(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/exact#exact-integer?__impl
    (lambda (_obj579_)
      (let ((_$e581_ (fixnum? _obj579_)))
        (if _$e581_ _$e581_ (##bignum? _obj579_)))))
  (define gerbil/gambit/exact#exact-integer-sqrt
    (lambda (_y569_)
      (if (and ((lambda (_obj571_)
                  (or (fixnum? _obj571_) (##bignum? _obj571_)))
                _y569_)
               (not (negative? _y569_)))
          (let ((_s-r577_ (##exact-int.sqrt _y569_)))
            (values (car _s-r577_) (cdr _s-r577_)))
          (error '"exact-integer-sqrt: Argument is not a nonnegative exact integer: "
                 _y569_)))))
