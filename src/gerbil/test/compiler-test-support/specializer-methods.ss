(import :std/interface
        :std/test
        :gerbil/runtime/mop)
(defclass Foo (a b c))
(defclass (Bar Foo) (d last))

(defmethod {method-a Foo}
  (lambda (self)
    {self.method-b (Foo-a self) (Foo-b self)}))

(defmethod {method-b Bar}
  (lambda (self a b)
    (let (result (+ (* a (@ self c)) (* b (@ self d))))
      (set! (Bar-last self) result)
      result)))

(interface Baz
  (method-a))

(check (__lookup-method-specializer Foo::method-a)
       ? procedure?)
(check (__lookup-method-specializer Bar::method-b)
       ? procedure?)

(let (obj (Bar a: 1 b: 2 c: 3 d: 4))
  (check (Baz-method-a (Baz obj))
         => 11)
  (check (Bar-last obj) => 11))
