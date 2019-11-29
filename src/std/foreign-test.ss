(import :std/foreign
        :std/test)

(export foreign-test)

(begin-ffi (f
            (struct abc a b)
            (struct foo a1 d2 str)
            (struct bar i j)
            g)
  (c-declare "
struct abc {
    char* a;
    char* b;
    char* c;
};
struct d { int e;};

struct foo {
    struct abc* a1;
    struct abc* d2;
    char* str;
};

struct bar {
int i;
int j;
};
")


  (c-define-type d (struct "d"))
  (define-c-lambda f () int "___return(2);")
  (define-c-lambda g () int "___return(2);")
  (define-c-struct abc ((a . char-string)
                        (b . char-string)))

  (define-c-struct foo ((a1 . abc*)
                        (d2 . abc*)
                        (str . char-string)))
  (define-c-struct bar ((i . int)
                        (j . int))))

(define foreign-test
  (test-suite "test :std/foreign"

              (def test-str1 "hello")
              (def test-str2 "world")

              (define (make-abc a b)
                (let (o (malloc-abc))
                  (abc-a-set! o a)
                  (abc-b-set! o b)
                  o))

              (test-case "c struct"
                         (def obj (malloc-abc))

                         (abc-a-set! obj test-str1)
                         (abc-b-set! obj test-str2)

                         (check (abc-a obj) => test-str1)
                         (check (abc-b obj) => test-str2)

                         (check (abc-ptr? obj) => #t))

              (test-case "c struct array"

                         (def obj-array (malloc-abc-array 2))

                         (def obj1 (malloc-abc))
                         (abc-a-set! obj1 test-str1)

                         (def obj2 (malloc-abc))
                         (abc-a-set! obj2 test-str2)

                         (abc-array-set! obj-array 0 obj1)
                         (abc-array-set! obj-array 1 obj2)

                         (check (abc-a (abc-array-ref obj-array 0)) => test-str1)
                         (check (abc-a (abc-array-ref obj-array 1)) => test-str2))

              (test-case "c int struct array"
                         (define y (malloc-bar))
                         (bar-i-set! y 123)
                         (bar-j-set! y 456)

                         (define y2 (malloc-bar))
                         (bar-i-set! y2 320)
                         (bar-j-set! y2 328)

                         (define k (malloc-bar-array 2))
                         (bar-array-set! k 0 y)
                         (bar-array-set! k 1 y2)

                         (check (bar-i (bar-array-ref k 1)) => 320))

              (test-case "modifying c strings"
                         (def obj1 (malloc-abc))

                         (def t3 (string-append test-str1 test-str2))
                         (def t4 (string-append test-str1 " test"))

                         (abc-a-set! obj1 test-str1)
                         (abc-b-set! obj1 test-str2)
                         (abc-a-set! obj1 t3)
                         (abc-b-set! obj1 t4)

                         (check (abc-a obj1) => t3)
                         (check (abc-b obj1) => t4))

              (test-case "nested structs"
                         (def foo-arr (malloc-foo-array 2))

                         (def obj1 (make-abc test-str1 test-str2))
                         (def obj2 (make-abc test-str2 test-str1))

                         (def t5 "here we go")
                         (def t6 "but not")

                         (def foo1 (malloc-foo))
                         (foo-a1-set! foo1 obj1)
                         (foo-d2-set! foo1 obj2)
                         (foo-str-set! foo1 t5)

                         (def foo2 (malloc-foo))
                         (foo-a1-set! foo2 obj2)
                         (foo-d2-set! foo2 obj1)
                         (foo-str-set! foo2 t6)

                         (foo-array-set! foo-arr 0 foo1)
                         (foo-array-set! foo-arr 1 foo2)

                         (check (foo-str (foo-array-ref foo-arr 0)) => t5)
                         (check (foo-str (foo-array-ref foo-arr 1)) => t6))))