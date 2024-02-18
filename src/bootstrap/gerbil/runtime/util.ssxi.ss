prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type displayln (@lambda (0) #f))
  (declare-type display* (@lambda (0) #f))
  (declare-type file-newer? (@lambda 2 #f))
  (declare-type create-directory*__% (@lambda 2 #f))
  (declare-type create-directory*__0 (@lambda 1 #f))
  (declare-type create-directory* (@case-lambda (1 #f) (2 #f)))
  (declare-type
   true
   (ast-rules
    (%#call %#ref)
    ((%#call _ (%#ref arg) ...) (%#quote #t))
    ((%#call _ arg ...) (%#begin arg ... (%#quote #t)))))
  (declare-type
   true?
   (ast-rules (%#call) ((%#call _ arg) (%#call (%#ref eq?) arg (%#quote #t)))))
  (declare-type
   false
   (ast-rules
    (%#call %#ref)
    ((%#call _ (%#ref arg) ...) (%#quote #f))
    ((%#call _ arg ...) (%#begin arg ... (%#quote #f)))))
  (declare-type
   void
   (ast-rules
    (%#call %#ref)
    ((%#call _ (%#ref arg) ...) (%#quote #!void))
    ((%#call _ arg ...) (%#begin arg ... (%#quote #!void)))))
  (declare-type
   void?
   (ast-rules
    (%#call)
    ((%#call _ arg) (%#call (%#ref eq?) arg (%#quote #!void)))))
  (declare-type eof-object (@lambda (0) #f))
  (declare-type identity (ast-rules (%#call) ((%#call _ arg) arg)))
  (declare-type dssl-object? (@lambda 1 #f))
  (declare-type dssl-key-object? (@lambda 1 #f))
  (declare-type dssl-rest-object? (@lambda 1 #f))
  (declare-type dssl-optional-object? (@lambda 1 #f))
  (declare-type immediate? (@lambda 1 #f))
  (declare-type nonnegative-fixnum? (@lambda 1 #f))
  (declare-type
   values-count
   (lambda (ast)
     (ast-case
      ast
      (%#call %#ref)
      ((%#call _ (%#ref var))
       #'(%#if (%#call (%#ref ##values?) (%#ref var))
               (%#call (%#ref ##vector-length) (%#ref var))
               (%#quote 1)))
      ((%#call recur expr)
       (with-syntax
        (($values (make-symbol (gensym '__values))))
        #'(%#let-values ((($values) expr)) (%#call recur (%#ref $values))))))))
  (declare-type values-ref (@lambda 2 #f))
  (declare-type
   values->list
   (lambda (ast)
     (ast-case
      ast
      (%#call %#ref)
      ((%#call _ (%#ref var))
       #'(%#if (%#call (%#ref ##values?) (%#ref var))
               (%#call (%#ref ##vector->list) (%#ref var))
               (%#call (%#ref list) (%#ref var))))
      ((%#call recur expr)
       (with-syntax
        (($values (make-symbol (gensym '__values))))
        #'(%#let-values ((($values) expr)) (%#call recur (%#ref $values))))))))
  (declare-type subvector->list__% (@lambda 2 #f))
  (declare-type subvector->list__0 (@lambda 1 #f))
  (declare-type subvector->list (@case-lambda (1 #f) (2 #f)))
  (declare-type make-list__% (@lambda 2 #f))
  (declare-type make-list__0 (@lambda 1 #f))
  (declare-type make-list (@case-lambda (1 #f) (2 #f)))
  (declare-type
   cons*
   (ast-rules
    (%#call)
    ((%#call _ x y) (%#call (%#ref cons) x y))
    ((%#call recur x y rest ...)
     (%#call (%#ref cons) x (%#call recur y rest ...)))))
  (declare-type foldl1 (@lambda 3 #f))
  (declare-type foldl2 (@lambda 4 #f))
  (declare-type foldl (@case-lambda (3 foldl1) (4 foldl2) ((5) foldl*)))
  (declare-type foldl* (@lambda (2) #f))
  (declare-type foldr1 (@lambda 3 #f))
  (declare-type foldr2 (@lambda 4 #f))
  (declare-type foldr (@case-lambda (3 foldr1) (4 foldr2) ((5) foldr*)))
  (declare-type foldr* (@lambda (2) #f))
  (declare-type drop (@lambda 2 #f))
  (declare-type remove-nulls! (@lambda 1 #f))
  (declare-type append1! (@lambda 2 #f))
  (declare-type append-reverse (@lambda 2 #f))
  (declare-type append-reverse-until (@lambda 3 #f))
  (declare-type andmap1 (@lambda 2 #f))
  (declare-type andmap2 (@lambda 3 #f))
  (declare-type andmap (@case-lambda (2 andmap1) (3 andmap2) ((4) andmap*)))
  (declare-type andmap* (@lambda (1) #f))
  (declare-type ormap1 (@lambda 2 #f))
  (declare-type ormap2 (@lambda 3 #f))
  (declare-type ormap (@case-lambda (2 ormap1) (3 ormap2) ((4) ormap*)))
  (declare-type ormap* (@lambda (1) #f))
  (declare-type filter (@lambda 2 #f))
  (declare-type filter-map1 (@lambda 2 #f))
  (declare-type filter-map2 (@lambda 3 #f))
  (declare-type
   filter-map
   (@case-lambda (2 filter-map1) (3 filter-map2) ((4) filter-map*)))
  (declare-type filter-map* (@lambda (1) #f))
  (declare-type iota__% (@lambda 3 #f))
  (declare-type iota__0 (@lambda 1 #f))
  (declare-type iota__1 (@lambda 2 #f))
  (declare-type iota (@case-lambda (1 #f) (2 #f) (3 #f)))
  (declare-type last-pair (@lambda 1 #f))
  (declare-type last (@lambda 1 #f))
  (declare-type assgetq__% (@lambda 3 #f))
  (declare-type assgetq__0 (@lambda 2 #f))
  (declare-type assgetq (@case-lambda (2 #f) (3 #f)))
  (declare-type assgetv__% (@lambda 3 #f))
  (declare-type assgetv__0 (@lambda 2 #f))
  (declare-type assgetv (@case-lambda (2 #f) (3 #f)))
  (declare-type assget__% (@lambda 3 #f))
  (declare-type assget__0 (@lambda 2 #f))
  (declare-type assget (@case-lambda (2 #f) (3 #f)))
  (declare-type pgetq__% (@lambda 3 #f))
  (declare-type pgetq__0 (@lambda 2 #f))
  (declare-type pgetq (@case-lambda (2 #f) (3 #f)))
  (declare-type pgetv__% (@lambda 3 #f))
  (declare-type pgetv__0 (@lambda 2 #f))
  (declare-type pgetv (@case-lambda (2 #f) (3 #f)))
  (declare-type pget__% (@lambda 3 #f))
  (declare-type pget__0 (@lambda 2 #f))
  (declare-type pget (@case-lambda (2 #f) (3 #f)))
  (declare-type find (@lambda 2 #f))
  (declare-type memf (@lambda 2 #f))
  (declare-type remove1 (@lambda 2 #f))
  (declare-type remv (@lambda 2 #f))
  (declare-type remq (@lambda 2 #f))
  (declare-type remf (@lambda 2 #f))
  (declare-type
   1+
   (ast-rules (%#call) ((%#call _ arg) (%#call (%#ref +) arg (%#quote 1)))))
  (declare-type
   1-
   (ast-rules (%#call) ((%#call _ arg) (%#call (%#ref -) arg (%#quote 1)))))
  (declare-type
   fx1+
   (ast-rules (%#call) ((%#call _ arg) (%#call (%#ref fx+) arg (%#quote 1)))))
  (declare-type
   fx1-
   (ast-rules (%#call) ((%#call _ arg) (%#call (%#ref fx-) arg (%#quote 1)))))
  (declare-type fxshift (@lambda 2 fxarithmetic-shift))
  (declare-type fx/ (@lambda 2 fxquotient))
  (declare-type fx>=0? (@lambda 1 #f))
  (declare-type fx>0? (@lambda 1 #f))
  (declare-type fx=0? (@lambda 1 #f))
  (declare-type fx<0? (@lambda 1 #f))
  (declare-type fx<=0? (@lambda 1 #f))
  (declare-type interned-symbol? (@lambda 1 #f))
  (declare-type display-as-string (@lambda 2 #f))
  (declare-type as-string__0 (@lambda 1 #f))
  (declare-type as-string__1 (@lambda (0) #f))
  (declare-type as-string (@case-lambda (1 as-string__0) ((0) as-string__1)))
  (declare-type make-symbol__0 (@lambda 1 #f))
  (declare-type make-symbol__1 (@lambda (0) #f))
  (declare-type
   make-symbol
   (@case-lambda (1 make-symbol__0) ((0) make-symbol__1)))
  (declare-type make-keyword__0 (@lambda 1 #f))
  (declare-type make-keyword__1 (@lambda (0) #f))
  (declare-type
   make-keyword
   (@case-lambda (1 make-keyword__0) ((0) make-keyword__1)))
  (declare-type interned-keyword? (@lambda 1 #f))
  (declare-type symbol->keyword (@lambda 1 #f))
  (declare-type keyword->symbol (@lambda 1 #f))
  (declare-type bytes->string__% (@lambda 2 #f))
  (declare-type bytes->string__0 (@lambda 1 #f))
  (declare-type bytes->string (@case-lambda (1 #f) (2 #f)))
  (declare-type string->bytes__% (@lambda 2 #f))
  (declare-type string->bytes__0 (@lambda 1 #f))
  (declare-type string->bytes (@case-lambda (1 #f) (2 #f)))
  (declare-type substring->bytes__% (@lambda 4 #f))
  (declare-type substring->bytes__0 (@lambda 3 #f))
  (declare-type substring->bytes (@case-lambda (3 #f) (4 #f)))
  (declare-type string-empty? (@lambda 1 #f))
  (declare-type string-prefix? (@lambda 2 #f))
  (declare-type string-index__% (@lambda 3 #f))
  (declare-type string-index__0 (@lambda 2 #f))
  (declare-type string-index (@case-lambda (2 #f) (3 #f)))
  (declare-type string-rindex__% (@lambda 3 #f))
  (declare-type string-rindex__0 (@lambda 2 #f))
  (declare-type string-rindex (@case-lambda (2 #f) (3 #f)))
  (declare-type string-split (@lambda 2 #f))
  (declare-type string-join (@lambda 2 #f))
  (declare-type read-u8vector (@lambda 2 #f))
  (declare-type write-u8vector (@lambda 2 #f))
  (declare-type read-string (@lambda 2 #f))
  (declare-type write-string (@lambda 2 #f))
  (declare-type DBG-helper (@lambda 5 #f)))
