(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/exact#exact-integer?__impl
    (lambda (_obj524_)
      (let ((_$e526_ (fixnum? _obj524_)))
        (if _$e526_ _$e526_ (##bignum? _obj524_)))))
  (define gerbil/gambit/exact#exact-integer-sqrt
    (lambda (_y514_)
      (if (if ((lambda (_obj516_)
                 (let ((_$e519_ (fixnum? _obj516_)))
                   (if _$e519_ _$e519_ (##bignum? _obj516_))))
               _y514_)
              (not (negative? _y514_))
              '#f)
          (let ((_s-r522_ (##exact-int.sqrt _y514_)))
            (values (car _s-r522_) (cdr _s-r522_)))
          (error '"exact-integer-sqrt: Argument is not a nonnegative exact integer: "
                 _y514_)))))
