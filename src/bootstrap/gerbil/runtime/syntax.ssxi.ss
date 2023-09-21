prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type
   SyntaxError::t
   (@class-type
    gerbil/runtime/syntax#SyntaxError::t
    #f
    (Exception::t)
    (message irritants where context phi marks)
    (message irritants where context phi marks)
    #f
    ((final: . #t))))
  (declare-type SyntaxError? (@class-pred SyntaxError::t))
  (declare-type make-SyntaxError (@class-cons SyntaxError::t))
  (declare-type SyntaxError-message (@class-getf SyntaxError::t message #f))
  (declare-type
   SyntaxError-irritants
   (@class-getf SyntaxError::t irritants #f))
  (declare-type SyntaxError-where (@class-getf SyntaxError::t where #f))
  (declare-type SyntaxError-context (@class-getf SyntaxError::t context #f))
  (declare-type SyntaxError-phi (@class-getf SyntaxError::t phi #f))
  (declare-type SyntaxError-marks (@class-getf SyntaxError::t marks #f))
  (declare-type
   SyntaxError-message-set!
   (@class-setf SyntaxError::t message #f))
  (declare-type
   SyntaxError-irritants-set!
   (@class-setf SyntaxError::t irritants #f))
  (declare-type SyntaxError-where-set! (@class-setf SyntaxError::t where #f))
  (declare-type
   SyntaxError-context-set!
   (@class-setf SyntaxError::t context #f))
  (declare-type SyntaxError-phi-set! (@class-setf SyntaxError::t phi #f))
  (declare-type SyntaxError-marks-set! (@class-setf SyntaxError::t marks #f))
  (declare-type &SyntaxError-message (@class-getf SyntaxError::t message #t))
  (declare-type
   &SyntaxError-irritants
   (@class-getf SyntaxError::t irritants #t))
  (declare-type &SyntaxError-where (@class-getf SyntaxError::t where #t))
  (declare-type &SyntaxError-context (@class-getf SyntaxError::t context #t))
  (declare-type &SyntaxError-phi (@class-getf SyntaxError::t phi #t))
  (declare-type &SyntaxError-marks (@class-getf SyntaxError::t marks #t))
  (declare-type
   &SyntaxError-message-set!
   (@class-setf SyntaxError::t message #t))
  (declare-type
   &SyntaxError-irritants-set!
   (@class-setf SyntaxError::t irritants #t))
  (declare-type &SyntaxError-where-set! (@class-setf SyntaxError::t where #t))
  (declare-type
   &SyntaxError-context-set!
   (@class-setf SyntaxError::t context #t))
  (declare-type &SyntaxError-phi-set! (@class-setf SyntaxError::t phi #t))
  (declare-type &SyntaxError-marks-set! (@class-setf SyntaxError::t marks #t))
  (declare-type SyntaxError::display-exception (@lambda 2 #f))
  (declare-type make-syntax-error (@lambda 6 #f))
  (declare-type syntax-error? (@class-pred SyntaxError::t))
  (declare-type __raise-syntax-error (@lambda (3) #f))
  (declare-type AST::t (@struct-type gerbil#AST::t #f 2 #f ()))
  (declare-type AST? (@struct-pred AST::t))
  (declare-type make-AST (@struct-cons AST::t))
  (declare-type AST-e (@struct-getf AST::t 0 #f))
  (declare-type AST-source (@struct-getf AST::t 1 #f))
  (declare-type AST-e-set! (@struct-setf AST::t 0 #f))
  (declare-type AST-source-set! (@struct-setf AST::t 1 #f))
  (declare-type &AST-e (@struct-getf AST::t 0 #t))
  (declare-type &AST-source (@struct-getf AST::t 1 #t))
  (declare-type &AST-e-set! (@struct-setf AST::t 0 #t))
  (declare-type &AST-source-set! (@struct-setf AST::t 1 #t))
  (declare-type __AST-e (@lambda 1 #f))
  (declare-type __AST-source (@lambda 1 #f))
  (declare-type __AST (@lambda 2 #f))
  (declare-type __AST-eq? (@lambda 2 #f))
  (declare-type __AST-pair? (@lambda 1 #f))
  (declare-type __AST-null? (@lambda 1 #f))
  (declare-type __AST-datum? (@lambda 1 #f))
  (declare-type __AST-id? (@lambda 1 #f))
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
  (declare-type read-syntax (@case-lambda (0 #f) (1 #f)))
  (declare-type read-syntax-from-file (@lambda 1 #f))
  (declare-type __wrap-syntax (@lambda 2 #f))
  (declare-type __unwrap-syntax (@lambda 2 #f))
  (declare-type __pp-syntax (@lambda 1 #f))
  (declare-type __make-readtable (@lambda 0 #f))
  (declare-type
   __readtable-bracket-keyword-set!
   (@lambda 2 macro-readtable-bracket-handler-set!))
  (declare-type
   __readtable-brace-keyword-set!
   (@lambda 2 macro-readtable-brace-handler-set!))
  (declare-type __read-sharp-bang (@lambda 3 #f))
  (declare-type source-location-path? (@lambda 1 #f))
  (declare-type source-location-path (@lambda 1 #f)))
