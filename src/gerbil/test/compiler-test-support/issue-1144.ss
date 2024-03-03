(defstruct Foo (a b))
(defmethod {frob Foo}
  (lambda (self)
    (Foo-b self)
    (def x (Foo-a self))
    0))
