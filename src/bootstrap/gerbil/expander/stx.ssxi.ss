prelude: :gerbil/compiler/ssxi
package: gerbil/expander

(begin
  (declare-class
   gx#identifier-wrap::t
   (@class gx#identifier-wrap::t
           (gx#AST::t)
           (gx#AST::t object::t t::t)
           (marks)
           (e source marks)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type
   gx#identifier-wrap::t
   (optimizer-resolve-class '(typedecl gx#identifier-wrap::t) 'class::t))
  (declare-type gx#identifier-wrap? (@predicate gx#identifier-wrap::t))
  (declare-type gx#make-identifier-wrap (@constructor gx#identifier-wrap::t))
  (declare-type
   gx#identifier-wrap-marks
   (@accessor gx#identifier-wrap::t marks #t))
  (declare-type gx#identifier-wrap-e (@accessor gx#identifier-wrap::t e #t))
  (declare-type
   gx#identifier-wrap-source
   (@accessor gx#identifier-wrap::t source #t))
  (declare-type
   gx#identifier-wrap-marks-set!
   (@mutator gx#identifier-wrap::t marks #t))
  (declare-type
   gx#identifier-wrap-e-set!
   (@mutator gx#identifier-wrap::t e #t))
  (declare-type
   gx#identifier-wrap-source-set!
   (@mutator gx#identifier-wrap::t source #t))
  (declare-type
   gx#&identifier-wrap-marks
   (@accessor gx#identifier-wrap::t marks #f))
  (declare-type gx#&identifier-wrap-e (@accessor gx#identifier-wrap::t e #f))
  (declare-type
   gx#&identifier-wrap-source
   (@accessor gx#identifier-wrap::t source #f))
  (declare-type
   gx#&identifier-wrap-marks-set!
   (@mutator gx#identifier-wrap::t marks #f))
  (declare-type
   gx#&identifier-wrap-e-set!
   (@mutator gx#identifier-wrap::t e #f))
  (declare-type
   gx#&identifier-wrap-source-set!
   (@mutator gx#identifier-wrap::t source #f))
  (declare-class
   gx#syntax-wrap::t
   (@class gx#syntax-wrap::t
           (gx#AST::t)
           (gx#AST::t object::t t::t)
           (mark)
           (e source mark)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type
   gx#syntax-wrap::t
   (optimizer-resolve-class '(typedecl gx#syntax-wrap::t) 'class::t))
  (declare-type gx#syntax-wrap? (@predicate gx#syntax-wrap::t))
  (declare-type gx#make-syntax-wrap (@constructor gx#syntax-wrap::t))
  (declare-type gx#syntax-wrap-mark (@accessor gx#syntax-wrap::t mark #t))
  (declare-type gx#syntax-wrap-e (@accessor gx#syntax-wrap::t e #t))
  (declare-type gx#syntax-wrap-source (@accessor gx#syntax-wrap::t source #t))
  (declare-type gx#syntax-wrap-mark-set! (@mutator gx#syntax-wrap::t mark #t))
  (declare-type gx#syntax-wrap-e-set! (@mutator gx#syntax-wrap::t e #t))
  (declare-type
   gx#syntax-wrap-source-set!
   (@mutator gx#syntax-wrap::t source #t))
  (declare-type gx#&syntax-wrap-mark (@accessor gx#syntax-wrap::t mark #f))
  (declare-type gx#&syntax-wrap-e (@accessor gx#syntax-wrap::t e #f))
  (declare-type gx#&syntax-wrap-source (@accessor gx#syntax-wrap::t source #f))
  (declare-type gx#&syntax-wrap-mark-set! (@mutator gx#syntax-wrap::t mark #f))
  (declare-type gx#&syntax-wrap-e-set! (@mutator gx#syntax-wrap::t e #f))
  (declare-type
   gx#&syntax-wrap-source-set!
   (@mutator gx#syntax-wrap::t source #f))
  (declare-class
   gx#syntax-quote::t
   (@class gx#syntax-quote::t
           (gx#AST::t)
           (gx#AST::t object::t t::t)
           (context marks)
           (e source context marks)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type
   gx#syntax-quote::t
   (optimizer-resolve-class '(typedecl gx#syntax-quote::t) 'class::t))
  (declare-type gx#syntax-quote? (@predicate gx#syntax-quote::t))
  (declare-type gx#make-syntax-quote (@constructor gx#syntax-quote::t))
  (declare-type
   gx#syntax-quote-context
   (@accessor gx#syntax-quote::t context #t))
  (declare-type gx#syntax-quote-marks (@accessor gx#syntax-quote::t marks #t))
  (declare-type gx#syntax-quote-e (@accessor gx#syntax-quote::t e #t))
  (declare-type
   gx#syntax-quote-source
   (@accessor gx#syntax-quote::t source #t))
  (declare-type
   gx#syntax-quote-context-set!
   (@mutator gx#syntax-quote::t context #t))
  (declare-type
   gx#syntax-quote-marks-set!
   (@mutator gx#syntax-quote::t marks #t))
  (declare-type gx#syntax-quote-e-set! (@mutator gx#syntax-quote::t e #t))
  (declare-type
   gx#syntax-quote-source-set!
   (@mutator gx#syntax-quote::t source #t))
  (declare-type
   gx#&syntax-quote-context
   (@accessor gx#syntax-quote::t context #f))
  (declare-type gx#&syntax-quote-marks (@accessor gx#syntax-quote::t marks #f))
  (declare-type gx#&syntax-quote-e (@accessor gx#syntax-quote::t e #f))
  (declare-type
   gx#&syntax-quote-source
   (@accessor gx#syntax-quote::t source #f))
  (declare-type
   gx#&syntax-quote-context-set!
   (@mutator gx#syntax-quote::t context #f))
  (declare-type
   gx#&syntax-quote-marks-set!
   (@mutator gx#syntax-quote::t marks #f))
  (declare-type gx#&syntax-quote-e-set! (@mutator gx#syntax-quote::t e #f))
  (declare-type
   gx#&syntax-quote-source-set!
   (@mutator gx#syntax-quote::t source #f))
  (declare-type
   gx#identifier?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#identifier-quote?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gx#sealed-syntax? (@lambda 1 #f))
  (declare-type gx#sealed-syntax-unwrap (@lambda 1 #f))
  (declare-type gx#syntax-e (@lambda 1 #f))
  (declare-type gx#syntax->datum (@lambda 1 #f))
  (declare-type gx#datum->syntax__% (@lambda 4 #f))
  (declare-type gx#datum->syntax__0 (@lambda 2 #f))
  (declare-type gx#datum->syntax__1 (@lambda 3 #f))
  (declare-type
   gx#datum->syntax
   (@case-lambda
    (2 gx#datum->syntax__0)
    (3 gx#datum->syntax__1)
    (4 gx#datum->syntax__%)))
  (declare-type gx#stx-unwrap__% (@lambda 2 #f))
  (declare-type gx#stx-unwrap__0 (@lambda 1 #f))
  (declare-type
   gx#stx-unwrap
   (@case-lambda (1 gx#stx-unwrap__0) (2 gx#stx-unwrap__%)))
  (declare-type
   gx#stx-wrap
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-rewrap
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gx#stx-apply-mark (@lambda 2 #f))
  (declare-type gx#apply-mark (@lambda 2 #f))
  (declare-type gx#stx-e (@lambda 1 #f))
  (declare-type
   gx#stx-source
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gx#stx-wrap-source (@lambda 2 #f))
  (declare-type gx#stx-datum? (@lambda 1 #f))
  (declare-type
   gx#self-quoting?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-boolean?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-keyword?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-char?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-number?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-fixnum?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-string?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-null?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-pair?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gx#stx-list? (@lambda 1 #f))
  (declare-type
   gx#stx-pair/null?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-vector?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-box?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-eq?
   (@lambda 2
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-eqv?
   (@lambda 2
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-equal?
   (@lambda 2
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-false?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gx#stx-identifier (@lambda (1) #f))
  (declare-type gx#stx-identifier-marks (@lambda 1 #f))
  (declare-type gx#stx-identifier-marks* (@lambda 1 #f))
  (declare-type
   gx#stx-identifier-context
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gx#identifier-list? (@lambda 1 #f))
  (declare-type gx#genident__% (@lambda 2 #f))
  (declare-type gx#genident__0 (@lambda 0 #f))
  (declare-type gx#genident__1 (@lambda 1 #f))
  (declare-type
   gx#genident
   (@case-lambda (0 gx#genident__0) (1 gx#genident__1) (2 gx#genident__%)))
  (declare-type gx#gentemps (@lambda 1 #f))
  (declare-type gx#syntax->list (@lambda 1 #f))
  (declare-type
   gx#stx-car
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gx#stx-cdr
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gx#stx-length (@lambda 1 #f))
  (declare-type
   gx#stx-for-each
   (@case-lambda (2 gx#stx-for-each1) (3 gx#stx-for-each2)))
  (declare-type gx#stx-for-each1 (@lambda 2 #f))
  (declare-type gx#stx-for-each2 (@lambda 3 #f))
  (declare-type gx#stx-map (@case-lambda (2 gx#stx-map1) (3 gx#stx-map2)))
  (declare-type gx#stx-map1 (@lambda 2 #f))
  (declare-type gx#stx-map2 (@lambda 3 #f))
  (declare-type gx#stx-andmap (@lambda 2 #f))
  (declare-type gx#stx-ormap (@lambda 2 #f))
  (declare-type gx#stx-foldl (@lambda 3 #f))
  (declare-type gx#stx-foldr (@lambda 3 #f))
  (declare-type gx#stx-reverse (@lambda 1 #f))
  (declare-type gx#stx-last (@lambda 1 #f))
  (declare-type gx#stx-last-pair (@lambda 1 #f))
  (declare-type gx#stx-list-tail (@lambda 2 #f))
  (declare-type
   gx#stx-list-ref
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gx#stx-plist?__% (@lambda 2 #f))
  (declare-type gx#stx-plist?__0 (@lambda 1 #f))
  (declare-type
   gx#stx-plist?
   (@case-lambda (1 gx#stx-plist?__0) (2 gx#stx-plist?__%)))
  (declare-type gx#stx-getq__% (@lambda 3 #f))
  (declare-type gx#stx-getq__0 (@lambda 2 #f))
  (declare-type
   gx#stx-getq
   (@case-lambda (2 gx#stx-getq__0) (3 gx#stx-getq__%))))
