(import :std/interface
        :std/test)
(defclass Foo (a b c))
(defclass (Bar Foo) (d))

(defmethod {method-a Foo}
  (lambda (self)
    {self.method-b (Foo-a self) (Foo-b self)}))

(defmethod {method-b Bar}
  (lambda (self a b)
    (+ (* a (@ self c)) (* b (@ self d)))))

(interface Baz
  (method-a))

(check (Baz-method-a (Baz (Bar a: 1 b: 2 c: 3 d: 4)))
       => 11)
