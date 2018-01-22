#lang :tutorial/lang/scuby

def (fibo n)
  def (fibo-r x y k)
    if (< k n)
      (fibo-r (+ x y) x (1+ k))
    else x
    end
  end
  (fibo-r 1 0 1)
end

def (make-counter x)
  def (counter)
    def next = x
    (set! x (1+ x))
    next
  end
  counter
end

def (make-string-prepender pre)
  def (prepend str)
    (string-append pre str)
  end
  prepend
end

def (make-foo-prepender)
  (make-string-prepender "foo: ")
end
