prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-class
   SyntaxError::t
   (@class gerbil/runtime/syntax#SyntaxError::t
           (Exception::t StackTrace::t)
           (Exception::t StackTrace::t object::t t::t)
           (message irritants where context phi marks)
           (continuation message irritants where context phi marks)
           #f
           #f
           #t
           #f
           #f
           ((display-exception . SyntaxError::display-exception))))
  (declare-type
   SyntaxError::t
   (optimizer-resolve-class '(typedecl SyntaxError::t) 'class::t))
  (declare-type SyntaxError? (@predicate SyntaxError::t))
  (declare-type make-SyntaxError (@constructor SyntaxError::t))
  (declare-type SyntaxError-message (@accessor SyntaxError::t message #t))
  (declare-type SyntaxError-irritants (@accessor SyntaxError::t irritants #t))
  (declare-type SyntaxError-where (@accessor SyntaxError::t where #t))
  (declare-type SyntaxError-context (@accessor SyntaxError::t context #t))
  (declare-type SyntaxError-phi (@accessor SyntaxError::t phi #t))
  (declare-type SyntaxError-marks (@accessor SyntaxError::t marks #t))
  (declare-type
   SyntaxError-continuation
   (@accessor SyntaxError::t continuation #t))
  (declare-type SyntaxError-message-set! (@mutator SyntaxError::t message #t))
  (declare-type
   SyntaxError-irritants-set!
   (@mutator SyntaxError::t irritants #t))
  (declare-type SyntaxError-where-set! (@mutator SyntaxError::t where #t))
  (declare-type SyntaxError-context-set! (@mutator SyntaxError::t context #t))
  (declare-type SyntaxError-phi-set! (@mutator SyntaxError::t phi #t))
  (declare-type SyntaxError-marks-set! (@mutator SyntaxError::t marks #t))
  (declare-type
   SyntaxError-continuation-set!
   (@mutator SyntaxError::t continuation #t))
  (declare-type &SyntaxError-message (@accessor SyntaxError::t message #f))
  (declare-type &SyntaxError-irritants (@accessor SyntaxError::t irritants #f))
  (declare-type &SyntaxError-where (@accessor SyntaxError::t where #f))
  (declare-type &SyntaxError-context (@accessor SyntaxError::t context #f))
  (declare-type &SyntaxError-phi (@accessor SyntaxError::t phi #f))
  (declare-type &SyntaxError-marks (@accessor SyntaxError::t marks #f))
  (declare-type
   &SyntaxError-continuation
   (@accessor SyntaxError::t continuation #f))
  (declare-type &SyntaxError-message-set! (@mutator SyntaxError::t message #f))
  (declare-type
   &SyntaxError-irritants-set!
   (@mutator SyntaxError::t irritants #f))
  (declare-type &SyntaxError-where-set! (@mutator SyntaxError::t where #f))
  (declare-type &SyntaxError-context-set! (@mutator SyntaxError::t context #f))
  (declare-type &SyntaxError-phi-set! (@mutator SyntaxError::t phi #f))
  (declare-type &SyntaxError-marks-set! (@mutator SyntaxError::t marks #f))
  (declare-type
   &SyntaxError-continuation-set!
   (@mutator SyntaxError::t continuation #f))
  (declare-type
   SyntaxError::display-exception
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t t::t) unchecked: #f)))
  (declare-type
   make-syntax-error
   (@lambda 6
            #f
            signature:
            (return: SyntaxError::t effect: #f arguments: #f unchecked: #f)))
  (declare-type syntax-error? (@predicate SyntaxError::t))
  (declare-type __raise-syntax-error (@lambda (3) #f))
  (declare-class
   AST::t
   (@class gerbil#AST::t
           ()
           (object::t t::t)
           (e source)
           (e source)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type AST::t (optimizer-resolve-class '(typedecl AST::t) 'class::t))
  (declare-type AST? (@predicate AST::t))
  (declare-type make-AST (@constructor AST::t))
  (declare-type AST-e (@accessor AST::t e #t))
  (declare-type AST-source (@accessor AST::t source #t))
  (declare-type AST-e-set! (@mutator AST::t e #t))
  (declare-type AST-source-set! (@mutator AST::t source #t))
  (declare-type &AST-e (@accessor AST::t e #f))
  (declare-type &AST-source (@accessor AST::t source #f))
  (declare-type &AST-e-set! (@mutator AST::t e #f))
  (declare-type &AST-source-set! (@mutator AST::t source #f))
  (declare-type __AST-e (@lambda 1 #f))
  (declare-type __AST-source (@lambda 1 #f))
  (declare-type __AST (@lambda 2 #f))
  (declare-type
   __AST-eq?
   (@lambda 2
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __AST-pair?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __AST-null?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __AST-datum?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   __AST-id?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type __AST-id-list?__% (@lambda 2 #f))
  (declare-type __AST-id-list?__0 (@lambda 1 #f))
  (declare-type
   __AST-id-list?
   (@case-lambda (1 __AST-id-list?__0) (2 __AST-id-list?__%)))
  (declare-type __AST-bind-list? (@lambda 1 #f))
  (declare-type __AST-list?__% (@lambda 2 #f))
  (declare-type __AST-list?__0 (@lambda 1 #f))
  (declare-type
   __AST-list?
   (@case-lambda (1 __AST-list?__0) (2 __AST-list?__%)))
  (declare-type __AST->list (@lambda 1 #f))
  (declare-type __AST->datum (@lambda 1 #f))
  (declare-type get-readenv (@lambda 1 #f))
  (declare-type read-syntax__% (@lambda 1 #f))
  (declare-type read-syntax__0 (@lambda 0 #f))
  (declare-type
   read-syntax
   (@case-lambda (0 read-syntax__0) (1 read-syntax__%)))
  (declare-type read-syntax-from-file (@lambda 1 #f))
  (declare-type __wrap-syntax (@lambda 2 #f))
  (declare-type __unwrap-syntax (@lambda 2 #f))
  (declare-type
   __pp-syntax
   (@lambda 1
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type __make-readtable (@lambda 0 #f))
  (declare-type
   __readtable-bracket-keyword-set!
   (@lambda 2 macro-readtable-bracket-handler-set!))
  (declare-type
   __readtable-brace-keyword-set!
   (@lambda 2 macro-readtable-brace-handler-set!))
  (declare-type __read-sharp-bang (@lambda 3 #f))
  (declare-type
   source-location-path?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type source-location-path (@lambda 1 #f)))
