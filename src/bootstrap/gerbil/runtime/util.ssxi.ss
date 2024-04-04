prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type
   displayln
   (@lambda (0)
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   display*
   (@lambda (0)
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   file-newer?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (string::t string::t)
             unchecked:
             __file-newer?)))
  (declare-type
   __file-newer?
   (@lambda 2
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   create-directory*__%
   (@lambda 2
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             (string::t fixnum::t)
             unchecked:
             __create-directory*)))
  (declare-type
   create-directory*__0
   (@lambda 1
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   create-directory*
   (@case-lambda
    (1
     create-directory*__0
     signature:
     (return: void::t effect: #f arguments: #f unchecked: #f))
    (2
     create-directory*__%
     signature:
     (return: void::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   __create-directory*__%
   (@lambda 2
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __create-directory*__0
   (@lambda 1
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __create-directory*
   (@case-lambda
    (1
     __create-directory*__0
     signature:
     (return: void::t effect: #f arguments: #f unchecked: #f))
    (2
     __create-directory*__%
     signature:
     (return: void::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   absent-value
   (optimizer-resolve-class '(typedecl absent-value) 'vector::t))
  (declare-type
   true
   (@lambda (0)
            #f
            signature:
            (return: true::t effect: #f arguments: #f unchecked: #f)))
  (declare-inline-rule!
   true
   (ast-rules
    (%#call %#ref)
    ((%#call _ (%#ref arg) ...) (%#quote #t))
    ((%#call _ arg ...) (%#begin arg ... (%#quote #t)))))
  (declare-type
   true?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-inline-rule!
   true?
   (ast-rules (%#call) ((%#call _ arg) (%#call (%#ref eq?) arg (%#quote #t)))))
  (declare-type
   false
   (@lambda (0)
            #f
            signature:
            (return: false::t effect: #f arguments: #f unchecked: #f)))
  (declare-inline-rule!
   false
   (ast-rules
    (%#call %#ref)
    ((%#call _ (%#ref arg) ...) (%#quote #f))
    ((%#call _ arg ...) (%#begin arg ... (%#quote #f)))))
  (declare-type
   void
   (@lambda (0)
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-inline-rule!
   void
   (ast-rules
    (%#call %#ref)
    ((%#call _ (%#ref arg) ...) (%#quote #!void))
    ((%#call _ arg ...) (%#begin arg ... (%#quote #!void)))))
  (declare-type
   void?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-inline-rule!
   void?
   (ast-rules
    (%#call)
    ((%#call _ arg) (%#call (%#ref eq?) arg (%#quote #!void)))))
  (declare-type
   dssl-object?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   dssl-key-object?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   dssl-rest-object?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   dssl-optional-object?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   immediate?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   nonnegative-fixnum?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   pair-or-null?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   values-count
   (@lambda 1
            #f
            signature:
            (return: fixnum::t effect: #f arguments: #f unchecked: #f)))
  (declare-inline-rule!
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
  (declare-type
   values-ref
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t fixnum::t)
             unchecked:
             __values-ref)))
  (declare-type
   __values-ref
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   values->list
   (@lambda 1
            #f
            signature:
            (return: list::t effect: #f arguments: #f unchecked: #f)))
  (declare-inline-rule!
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
  (declare-type
   foldl1
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (procedure::t t::t t::t)
             unchecked:
             __foldl1)))
  (declare-type
   __foldl1
   (@lambda 3
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   foldl2
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (procedure::t t::t t::t t::t)
             unchecked:
             __foldl2)))
  (declare-type
   __foldl2
   (@lambda 4
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   foldl
   (@case-lambda
    (3 foldl1 signature: (return: t::t effect: #f arguments: #f unchecked: #f))
    (4 foldl2 signature: (return: t::t effect: #f arguments: #f unchecked: #f))
    ((4) foldl*)))
  (declare-type
   foldl*
   (@lambda (2)
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (procedure::t t::t . t::t)
             unchecked:
             __foldl*)))
  (declare-type
   __foldl*
   (@lambda (2)
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   foldr1
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (procedure::t t::t t::t)
             unchecked:
             __foldr1)))
  (declare-type
   __foldr1
   (@lambda 3
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   foldr2
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (procedure::t t::t t::t t::t)
             unchecked:
             __foldr2)))
  (declare-type
   __foldr2
   (@lambda 4
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   foldr
   (@case-lambda
    (3 foldr1 signature: (return: t::t effect: #f arguments: #f unchecked: #f))
    (4 foldr2 signature: (return: t::t effect: #f arguments: #f unchecked: #f))
    ((4) foldr*)))
  (declare-type
   foldr*
   (@lambda (2)
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (procedure::t t::t . t::t)
             unchecked:
             __foldr*)))
  (declare-type
   __foldr*
   (@lambda (2)
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type remove-nulls! (@lambda 1 #f))
  (declare-type
   append1!
   (@lambda 2
            #f
            signature:
            (return: list::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   append-reverse-until
   (@lambda 3
            #f
            signature:
            (return:
             values::t
             effect:
             #f
             arguments:
             (procedure::t t::t t::t)
             unchecked:
             __append-reverse-until)))
  (declare-type
   __append-reverse-until
   (@lambda 3
            #f
            signature:
            (return: values::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   andmap1
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (procedure::t t::t)
             unchecked:
             __andmap1)))
  (declare-type
   __andmap1
   (@lambda 2
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   andmap2
   (@lambda 3
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (procedure::t t::t t::t)
             unchecked:
             __andmap2)))
  (declare-type
   __andmap2
   (@lambda 3
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   andmap
   (@case-lambda
    (2
     andmap1
     signature:
     (return: boolean::t effect: #f arguments: #f unchecked: #f))
    (3
     andmap2
     signature:
     (return: boolean::t effect: #f arguments: #f unchecked: #f))
    ((3) andmap*)))
  (declare-type
   andmap*
   (@lambda (1)
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (procedure::t . t::t)
             unchecked:
             __andmap*)))
  (declare-type
   __andmap*
   (@lambda (1)
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   ormap1
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (procedure::t t::t)
             unchecked:
             __ormap1)))
  (declare-type
   __ormap1
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   ormap2
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (procedure::t t::t t::t)
             unchecked:
             __ormap2)))
  (declare-type
   __ormap2
   (@lambda 3
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   ormap
   (@case-lambda
    (2 ormap1 signature: (return: t::t effect: #f arguments: #f unchecked: #f))
    (3 ormap2 signature: (return: t::t effect: #f arguments: #f unchecked: #f))
    ((3) ormap*)))
  (declare-type
   ormap*
   (@lambda (1)
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (procedure::t . t::t)
             unchecked:
             __ormap*)))
  (declare-type
   __ormap*
   (@lambda (1)
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   filter-map1
   (@lambda 2
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             (procedure::t t::t)
             unchecked:
             __filter-map1)))
  (declare-type
   __filter-map1
   (@lambda 2
            #f
            signature:
            (return: list::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   filter-map2
   (@lambda 3
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             (procedure::t t::t t::t)
             unchecked:
             __filter-map2)))
  (declare-type
   __filter-map2
   (@lambda 3
            #f
            signature:
            (return: list::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   filter-map
   (@case-lambda
    (2
     filter-map1
     signature:
     (return: list::t effect: #f arguments: #f unchecked: #f))
    (3
     filter-map2
     signature:
     (return: list::t effect: #f arguments: #f unchecked: #f))
    ((3) filter-map*)))
  (declare-type
   filter-map*
   (@lambda (1)
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             (procedure::t . t::t)
             unchecked:
             __filter-map*)))
  (declare-type
   __filter-map*
   (@lambda (1)
            #f
            signature:
            (return: list::t effect: #f arguments: #f unchecked: #f)))
  (declare-type agetq__% (@lambda 3 #f))
  (declare-type agetq__0 (@lambda 2 #f))
  (declare-type agetq (@case-lambda (2 agetq__0) (3 agetq__%)))
  (declare-type agetv__% (@lambda 3 #f))
  (declare-type agetv__0 (@lambda 2 #f))
  (declare-type agetv (@case-lambda (2 agetv__0) (3 agetv__%)))
  (declare-type aget__% (@lambda 3 #f))
  (declare-type aget__0 (@lambda 2 #f))
  (declare-type aget (@case-lambda (2 aget__0) (3 aget__%)))
  (declare-type assgetq (@case-lambda (2 agetq__0) (3 agetq__%)))
  (declare-type assgetv (@case-lambda (2 agetv__0) (3 agetv__%)))
  (declare-type assget (@case-lambda (2 aget__0) (3 aget__%)))
  (declare-type pgetq__% (@lambda 3 #f))
  (declare-type pgetq__0 (@lambda 2 #f))
  (declare-type pgetq (@case-lambda (2 pgetq__0) (3 pgetq__%)))
  (declare-type pgetv__% (@lambda 3 #f))
  (declare-type pgetv__0 (@lambda 2 #f))
  (declare-type pgetv (@case-lambda (2 pgetv__0) (3 pgetv__%)))
  (declare-type pget__% (@lambda 3 #f))
  (declare-type pget__0 (@lambda 2 #f))
  (declare-type pget (@case-lambda (2 pget__0) (3 pget__%)))
  (declare-type
   find
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (procedure::t t::t)
             unchecked:
             __find)))
  (declare-type
   __find
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   memf
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (procedure::t t::t)
             unchecked:
             __memf)))
  (declare-type
   __memf
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type remove1 (@lambda 2 #f))
  (declare-type remv1 (@lambda 2 #f))
  (declare-type remq1 (@lambda 2 #f))
  (declare-type
   remf
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (procedure::t t::t)
             unchecked:
             __remf)))
  (declare-type
   __remf
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   1+
   (@lambda 1
            #f
            signature:
            (return:
             number::t
             effect:
             #f
             arguments:
             (number::t)
             unchecked:
             __1+)))
  (declare-type
   __1+
   (@lambda 1
            #f
            signature:
            (return: number::t effect: #f arguments: #f unchecked: #f)))
  (declare-inline-rule!
   1+
   (ast-rules (%#call) ((%#call _ arg) (%#call (%#ref +) arg (%#quote 1)))))
  (declare-type
   1-
   (@lambda 1
            #f
            signature:
            (return:
             number::t
             effect:
             #f
             arguments:
             (number::t)
             unchecked:
             __1-)))
  (declare-type
   __1-
   (@lambda 1
            #f
            signature:
            (return: number::t effect: #f arguments: #f unchecked: #f)))
  (declare-inline-rule!
   1-
   (ast-rules (%#call) ((%#call _ arg) (%#call (%#ref -) arg (%#quote 1)))))
  (declare-type
   fx1+
   (@lambda 1
            #f
            signature:
            (return:
             fixnum::t
             effect:
             #f
             arguments:
             (fixnum::t)
             unchecked:
             __fx1+)))
  (declare-type
   __fx1+
   (@lambda 1
            #f
            signature:
            (return: fixnum::t effect: #f arguments: #f unchecked: #f)))
  (declare-inline-rule!
   fx1+
   (ast-rules (%#call) ((%#call _ arg) (%#call (%#ref fx+) arg (%#quote 1)))))
  (declare-type
   fx1-
   (@lambda 1
            #f
            signature:
            (return:
             fixnum::t
             effect:
             #f
             arguments:
             (fixnum::t)
             unchecked:
             __fx1-)))
  (declare-type
   __fx1-
   (@lambda 1
            #f
            signature:
            (return: fixnum::t effect: #f arguments: #f unchecked: #f)))
  (declare-inline-rule!
   fx1-
   (ast-rules (%#call) ((%#call _ arg) (%#call (%#ref fx-) arg (%#quote 1)))))
  (declare-type
   fxshift
   (@lambda 2
            #f
            signature:
            (return:
             fixnum::t
             effect:
             (pure)
             arguments:
             (fixnum::t fixnum::t)
             unchecked:
             ##fxarithmetic-shift)))
  (declare-type
   fx/
   (@lambda 2
            #f
            signature:
            (return:
             fixnum::t
             effect:
             (pure)
             arguments:
             (fixnum::t fixnum::t)
             unchecked:
             ##fxquotient)))
  (declare-type
   fx>=0?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   fx>0?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   fx=0?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   fx<0?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   fx<=0?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   interned-symbol?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   display-as-string
   (@lambda 2
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             (t::t t::t)
             unchecked:
             __display-as-string)))
  (declare-type
   __display-as-string
   (@lambda 2
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type as-string__0 (@lambda 1 #f))
  (declare-type
   as-string__1
   (@lambda (0)
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   as-string
   (@case-lambda
    (1 as-string__0)
    ((0)
     as-string__1
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type make-symbol__0 (@lambda 1 #f))
  (declare-type
   make-symbol__1
   (@lambda (0)
            #f
            signature:
            (return: symbol::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   make-symbol
   (@case-lambda
    (1 make-symbol__0)
    ((0)
     make-symbol__1
     signature:
     (return: symbol::t effect: #f arguments: #f unchecked: #f))))
  (declare-type make-keyword__0 (@lambda 1 #f))
  (declare-type
   make-keyword__1
   (@lambda (0)
            #f
            signature:
            (return: keyword::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   make-keyword
   (@case-lambda
    (1 make-keyword__0)
    ((0)
     make-keyword__1
     signature:
     (return: keyword::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   interned-keyword?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   symbol->keyword
   (@lambda 1
            #f
            signature:
            (return:
             keyword::t
             effect:
             #f
             arguments:
             (symbol::t)
             unchecked:
             __symbol->keyword)))
  (declare-type
   __symbol->keyword
   (@lambda 1
            #f
            signature:
            (return: keyword::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   keyword->symbol
   (@lambda 1
            #f
            signature:
            (return:
             symbol::t
             effect:
             #f
             arguments:
             (keyword::t)
             unchecked:
             __keyword->symbol)))
  (declare-type
   __keyword->symbol
   (@lambda 1
            #f
            signature:
            (return: symbol::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   bytes->string__%
   (@lambda 2
            #f
            signature:
            (return:
             string::t
             effect:
             #f
             arguments:
             (u8vector::t symbol::t)
             unchecked:
             __bytes->string)))
  (declare-type
   bytes->string__0
   (@lambda 1
            #f
            signature:
            (return: string::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   bytes->string
   (@case-lambda
    (1
     bytes->string__0
     signature:
     (return: string::t effect: #f arguments: #f unchecked: #f))
    (2
     bytes->string__%
     signature:
     (return: string::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   __bytes->string__%
   (@lambda 2
            #f
            signature:
            (return: string::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __bytes->string__0
   (@lambda 1
            #f
            signature:
            (return: string::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __bytes->string
   (@case-lambda
    (1
     __bytes->string__0
     signature:
     (return: string::t effect: #f arguments: #f unchecked: #f))
    (2
     __bytes->string__%
     signature:
     (return: string::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   string->bytes__%
   (@lambda 2
            #f
            signature:
            (return:
             u8vector::t
             effect:
             #f
             arguments:
             (string::t symbol::t)
             unchecked:
             __string->bytes)))
  (declare-type
   string->bytes__0
   (@lambda 1
            #f
            signature:
            (return: u8vector::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   string->bytes
   (@case-lambda
    (1
     string->bytes__0
     signature:
     (return: u8vector::t effect: #f arguments: #f unchecked: #f))
    (2
     string->bytes__%
     signature:
     (return: u8vector::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   __string->bytes__%
   (@lambda 2
            #f
            signature:
            (return: u8vector::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __string->bytes__0
   (@lambda 1
            #f
            signature:
            (return: u8vector::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __string->bytes
   (@case-lambda
    (1
     __string->bytes__0
     signature:
     (return: u8vector::t effect: #f arguments: #f unchecked: #f))
    (2
     __string->bytes__%
     signature:
     (return: u8vector::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   substring->bytes__%
   (@lambda 4
            #f
            signature:
            (return:
             u8vector::t
             effect:
             #f
             arguments:
             (string::t t::t t::t t::t)
             unchecked:
             __substring->bytes)))
  (declare-type
   substring->bytes__0
   (@lambda 3
            #f
            signature:
            (return: u8vector::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   substring->bytes
   (@case-lambda
    (3
     substring->bytes__0
     signature:
     (return: u8vector::t effect: #f arguments: #f unchecked: #f))
    (4
     substring->bytes__%
     signature:
     (return: u8vector::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   __substring->bytes__%
   (@lambda 4
            #f
            signature:
            (return: u8vector::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __substring->bytes__0
   (@lambda 3
            #f
            signature:
            (return: u8vector::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __substring->bytes
   (@case-lambda
    (3
     __substring->bytes__0
     signature:
     (return: u8vector::t effect: #f arguments: #f unchecked: #f))
    (4
     __substring->bytes__%
     signature:
     (return: u8vector::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   string-empty?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (string::t)
             unchecked:
             __string-empty?)))
  (declare-type
   __string-empty?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   string-index__%
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (string::t char::t t::t)
             unchecked:
             __string-index)))
  (declare-type
   string-index__0
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   string-index
   (@case-lambda
    (2
     string-index__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (3
     string-index__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   __string-index__%
   (@lambda 3
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __string-index__0
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __string-index
   (@case-lambda
    (2
     __string-index__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (3
     __string-index__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   string-rindex__%
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (string::t char::t t::t)
             unchecked:
             __string-rindex)))
  (declare-type
   string-rindex__0
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   string-rindex
   (@case-lambda
    (2
     string-rindex__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (3
     string-rindex__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   __string-rindex__%
   (@lambda 3
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __string-rindex__0
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __string-rindex
   (@case-lambda
    (2
     __string-rindex__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (3
     __string-rindex__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   string-split
   (@lambda 2
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             (string::t char::t)
             unchecked:
             __string-split)))
  (declare-type
   __string-split
   (@lambda 2
            #f
            signature:
            (return: list::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   string-join
   (@lambda 2
            #f
            signature:
            (return: string::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   read-u8vector__%
   (@lambda 4
            #f
            signature:
            (return:
             fixnum::t
             effect:
             #f
             arguments:
             (u8vector::t t::t t::t t::t)
             unchecked:
             __read-u8vector)))
  (declare-type
   read-u8vector__0
   (@lambda 2
            #f
            signature:
            (return: fixnum::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   read-u8vector__1
   (@lambda 3
            #f
            signature:
            (return: fixnum::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   read-u8vector
   (@case-lambda
    (2
     read-u8vector__0
     signature:
     (return: fixnum::t effect: #f arguments: #f unchecked: #f))
    (3
     read-u8vector__1
     signature:
     (return: fixnum::t effect: #f arguments: #f unchecked: #f))
    (4
     read-u8vector__%
     signature:
     (return: fixnum::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   __read-u8vector__%
   (@lambda 4
            #f
            signature:
            (return: fixnum::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __read-u8vector__0
   (@lambda 2
            #f
            signature:
            (return: fixnum::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __read-u8vector__1
   (@lambda 3
            #f
            signature:
            (return: fixnum::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __read-u8vector
   (@case-lambda
    (2
     __read-u8vector__0
     signature:
     (return: fixnum::t effect: #f arguments: #f unchecked: #f))
    (3
     __read-u8vector__1
     signature:
     (return: fixnum::t effect: #f arguments: #f unchecked: #f))
    (4
     __read-u8vector__%
     signature:
     (return: fixnum::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   write-u8vector__%
   (@lambda 4
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             (u8vector::t t::t t::t t::t)
             unchecked:
             __write-u8vector)))
  (declare-type
   write-u8vector__0
   (@lambda 2
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   write-u8vector__1
   (@lambda 3
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   write-u8vector
   (@case-lambda
    (2
     write-u8vector__0
     signature:
     (return: void::t effect: #f arguments: #f unchecked: #f))
    (3
     write-u8vector__1
     signature:
     (return: void::t effect: #f arguments: #f unchecked: #f))
    (4
     write-u8vector__%
     signature:
     (return: void::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   __write-u8vector__%
   (@lambda 4
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __write-u8vector__0
   (@lambda 2
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __write-u8vector__1
   (@lambda 3
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __write-u8vector
   (@case-lambda
    (2
     __write-u8vector__0
     signature:
     (return: void::t effect: #f arguments: #f unchecked: #f))
    (3
     __write-u8vector__1
     signature:
     (return: void::t effect: #f arguments: #f unchecked: #f))
    (4
     __write-u8vector__%
     signature:
     (return: void::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   DBG-printer
   (optimizer-resolve-class '(typedecl DBG-printer) 'procedure::t))
  (declare-type DBG-helper (@lambda 5 #f)))
