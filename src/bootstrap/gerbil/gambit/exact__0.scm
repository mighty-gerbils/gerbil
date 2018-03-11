(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/exact#exact-integer?__impl
    (lambda (_obj580_)
      (let ((_$e582_ (fixnum? _obj580_)))
        (if _$e582_ _$e582_ (##bignum? _obj580_)))))
  (define gerbil/gambit/exact#exact-integer-sqrt
    (lambda (_y570_)
      (if (if ((lambda (_obj572_)
                 (let ((_$e575_ (fixnum? _obj572_)))
                   (if _$e575_ _$e575_ (##bignum? _obj572_))))
               _y570_)
              (not (negative? _y570_))
              '#f)
          (let ((_s-r578_ (##exact-int.sqrt _y570_)))
            (values (car _s-r578_) (cdr _s-r578_)))
          (error '"exact-integer-sqrt: Argument is not a nonnegative exact integer: "
                 _y570_)))))
