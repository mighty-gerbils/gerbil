(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/gambit/exact#exact-integer?__impl
    (lambda (_obj547_)
      (let ((_$e549_ (fixnum? _obj547_)))
        (if _$e549_ _$e549_ (##bignum? _obj547_)))))
  (define gerbil/gambit/exact#exact-integer-sqrt
    (lambda (_y537_)
      (if (if ((lambda (_obj539_)
                 (let ((_$e542_ (fixnum? _obj539_)))
                   (if _$e542_ _$e542_ (##bignum? _obj539_))))
               _y537_)
              (not (negative? _y537_))
              '#f)
          (let ((_s-r545_ (##exact-int.sqrt _y537_)))
            (values (car _s-r545_) (cdr _s-r545_)))
          (error '"exact-integer-sqrt: Argument is not a nonnegative exact integer: "
                 _y537_)))))
