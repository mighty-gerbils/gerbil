(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1734278444)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (__make-class-type
       'gerbil/runtime/syntax#SyntaxError::t
       'SyntaxError
       (list Exception::t StackTrace::t)
       '(message irritants where context phi marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define SyntaxError? (__make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _%$args113365%_
        (apply make-instance SyntaxError::t _%$args113365%_)))
    (define SyntaxError-message
      (__make-class-slot-accessor SyntaxError::t 'message))
    (define SyntaxError-irritants
      (__make-class-slot-accessor SyntaxError::t 'irritants))
    (define SyntaxError-where
      (__make-class-slot-accessor SyntaxError::t 'where))
    (define SyntaxError-context
      (__make-class-slot-accessor SyntaxError::t 'context))
    (define SyntaxError-phi (__make-class-slot-accessor SyntaxError::t 'phi))
    (define SyntaxError-marks
      (__make-class-slot-accessor SyntaxError::t 'marks))
    (define SyntaxError-continuation
      (__make-class-slot-accessor SyntaxError::t 'continuation))
    (define SyntaxError-message-set!
      (__make-class-slot-mutator SyntaxError::t 'message))
    (define SyntaxError-irritants-set!
      (__make-class-slot-mutator SyntaxError::t 'irritants))
    (define SyntaxError-where-set!
      (__make-class-slot-mutator SyntaxError::t 'where))
    (define SyntaxError-context-set!
      (__make-class-slot-mutator SyntaxError::t 'context))
    (define SyntaxError-phi-set!
      (__make-class-slot-mutator SyntaxError::t 'phi))
    (define SyntaxError-marks-set!
      (__make-class-slot-mutator SyntaxError::t 'marks))
    (define SyntaxError-continuation-set!
      (__make-class-slot-mutator SyntaxError::t 'continuation))
    (define &SyntaxError-message
      (__make-class-slot-unchecked-accessor SyntaxError::t 'message))
    (define &SyntaxError-irritants
      (__make-class-slot-unchecked-accessor SyntaxError::t 'irritants))
    (define &SyntaxError-where
      (__make-class-slot-unchecked-accessor SyntaxError::t 'where))
    (define &SyntaxError-context
      (__make-class-slot-unchecked-accessor SyntaxError::t 'context))
    (define &SyntaxError-phi
      (__make-class-slot-unchecked-accessor SyntaxError::t 'phi))
    (define &SyntaxError-marks
      (__make-class-slot-unchecked-accessor SyntaxError::t 'marks))
    (define &SyntaxError-continuation
      (__make-class-slot-unchecked-accessor SyntaxError::t 'continuation))
    (define &SyntaxError-message-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'message))
    (define &SyntaxError-irritants-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'irritants))
    (define &SyntaxError-where-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'where))
    (define &SyntaxError-context-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'context))
    (define &SyntaxError-phi-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'phi))
    (define &SyntaxError-marks-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'marks))
    (define &SyntaxError-continuation-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'continuation))
    (define SyntaxError::display-exception
      (lambda (_%self112866113247%_ _%port113249%_)
        (let* ((_%self113251%_ _%self112866113247%_)
               (_%self113253%_ _%self113251%_))
          (letrec ((_%location113263%_
                    (lambda ()
                      (let _%lp113325%_ ((_%rest113327%_
                                          (##unchecked-structure-ref
                                           _%self113253%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest113328113336%_ _%rest113327%_)
                               (_%else113330113344%_ (lambda () '#f))
                               (_%K113332113353%_
                                (lambda (_%rest113347%_ _%hd113348%_)
                                  (let ((_%$e113350%_
                                         (__AST-source _%hd113348%_)))
                                    (if _%$e113350%_
                                        _%$e113350%_
                                        (_%lp113325%_ _%rest113347%_))))))
                          (if (pair? _%rest113328113336%_)
                              (let ((_%hd113333113356%_
                                     (##car _%rest113328113336%_))
                                    (_%tl113334113358%_
                                     (##cdr _%rest113328113336%_)))
                                (let* ((_%hd113361%_ _%hd113333113356%_)
                                       (_%rest113363%_ _%tl113334113358%_))
                                  (_%K113332113353%_
                                   _%rest113363%_
                                   _%hd113361%_)))
                              (_%else113330113344%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e113266%_ (_%location113263%_)))
                 (if _%$e113266%_
                     ((lambda (_%where113269%_)
                        (##display-locat _%where113269%_ '#t _%port113249%_))
                      _%$e113266%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e113272%_
                      (##unchecked-structure-ref _%self113253%_ '4 '#f '#f)))
                 (if _%$e113272%_
                     ((lambda (_%where113275%_)
                        (displayln
                         '" at "
                         _%where113275%_
                         '": "
                         (##unchecked-structure-ref
                          _%self113253%_
                          '2
                          '#f
                          '#f)))
                      _%$e113272%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self113253%_ '2 '#f '#f))))
               (let* ((_%self.irritants113277113285%_
                       (##unchecked-structure-ref _%self113253%_ '3 '#f '#f))
                      (_%else113279113293%_ (lambda () '#!void))
                      (_%K113281113306%_
                       (lambda (_%rest113296%_ _%stx113297%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx113297%_)
                         (for-each
                          (lambda (_%detail113299%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail113299%_))
                            (let ((_%$e113301%_
                                   (__AST-source _%detail113299%_)))
                              (if _%$e113301%_
                                  ((lambda (_%loc113304%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc113304%_
                                      '#t
                                      _%port113249%_))
                                   _%$e113301%_)
                                  '#!void))
                            (newline))
                          _%rest113296%_))))
                 (if (pair? _%self.irritants113277113285%_)
                     (let ((_%hd113282113309%_
                            (##car _%self.irritants113277113285%_))
                           (_%tl113283113311%_
                            (##cdr _%self.irritants113277113285%_)))
                       (let* ((_%stx113314%_ _%hd113282113309%_)
                              (_%rest113316%_ _%tl113283113311%_))
                         (_%K113281113306%_ _%rest113316%_ _%stx113314%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont113317113319%_
                          (##unchecked-structure-ref
                           _%self113253%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont113317113319%_
                         (let ((_%cont113322%_ _%cont113317113319%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont113322%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port113249%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message113118%_
               _%irritants113119%_
               _%where113120%_
               _%context113121%_
               _%marks113122%_
               _%phi113123%_)
        (let ((__obj113462
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj113462 _%message113118%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj113462
           _%irritants113119%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj113462 _%where113120%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj113462 _%context113121%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj113462 _%marks113122%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj113462 _%phi113123%_ '6 '#f '#f)
          __obj113462)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where113113%_
               _%message113114%_
               _%stx113115%_
               .
               _%details113116%_)
        (raise (make-syntax-error
                _%message113114%_
                (cons _%stx113115%_ _%details113116%_)
                _%where113113%_
                '#f
                '#f
                '#f))))
    (define AST::t
      (__make-class-type
       'gerbil#AST::t
       'syntax
       (list)
       '(e source)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define AST? (__make-class-predicate AST::t))
    (define make-AST
      (lambda _%$args113110%_ (apply make-instance AST::t _%$args113110%_)))
    (define AST-e (__make-class-slot-accessor AST::t 'e))
    (define AST-source (__make-class-slot-accessor AST::t 'source))
    (define AST-e-set! (__make-class-slot-mutator AST::t 'e))
    (define AST-source-set! (__make-class-slot-mutator AST::t 'source))
    (define &AST-e (__make-class-slot-unchecked-accessor AST::t 'e))
    (define &AST-source (__make-class-slot-unchecked-accessor AST::t 'source))
    (define &AST-e-set! (__make-class-slot-unchecked-mutator AST::t 'e))
    (define &AST-source-set!
      (__make-class-slot-unchecked-mutator AST::t 'source))
    (define __AST-e
      (lambda (_%stx113108%_)
        (if (##structure-instance-of? _%stx113108%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx113108%_ '1 '#f '#f)
            _%stx113108%_)))
    (define __AST-source
      (lambda (_%stx113099%_)
        (let _%lp113101%_ ((_%src113103%_ _%stx113099%_))
          (if (##structure-instance-of? _%src113103%_ 'gerbil#AST::t)
              (_%lp113101%_
               (##unchecked-structure-ref _%src113103%_ '2 '#f '#f))
              (if (##locat? _%src113103%_) _%src113103%_ '#f)))))
    (define __AST
      (lambda (_%e113091%_ _%src-stx113092%_)
        (let ((_%src113094%_ (__AST-source _%src-stx113092%_)))
          (if (or (##structure-instance-of? _%e113091%_ 'gerbil#AST::t)
                  (not _%src113094%_))
              _%e113091%_
              (##structure AST::t _%e113091%_ _%src113094%_)))))
    (define __AST-eq?
      (lambda (_%stx113088%_ _%obj113089%_)
        (eq? (__AST-e _%stx113088%_) _%obj113089%_)))
    (define __AST-pair?
      (lambda (_%stx113086%_) (pair? (__AST-e _%stx113086%_))))
    (define __AST-null?
      (lambda (_%stx113084%_) (null? (__AST-e _%stx113084%_))))
    (define __AST-datum?
      (lambda (_%stx113065%_)
        (let* ((_%e113067%_ (__AST-e _%stx113065%_))
               (_%$e113069%_ (number? _%e113067%_)))
          (if _%$e113069%_
              _%$e113069%_
              (let ((_%$e113072%_ (string? _%e113067%_)))
                (if _%$e113072%_
                    _%$e113072%_
                    (let ((_%$e113075%_ (char? _%e113067%_)))
                      (if _%$e113075%_
                          _%$e113075%_
                          (let ((_%$e113078%_ (keyword? _%e113067%_)))
                            (if _%$e113078%_
                                _%$e113078%_
                                (let ((_%$e113081%_ (boolean? _%e113067%_)))
                                  (if _%$e113081%_
                                      _%$e113081%_
                                      (eq? _%e113067%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx113063%_) (symbol? (__AST-e _%stx113063%_))))
    (define __AST-id-list?__%
      (lambda (_%stx113014%_ _%tail?113015%_)
        (let _%lp113017%_ ((_%rest113019%_ _%stx113014%_))
          (let* ((_%$e113021%_ _%rest113019%_)
                 (_%$E113023113036%_
                  (lambda ()
                    (let* ((_%$E113024113031%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e113021%_)))
                           (_%rest113034%_ _%$e113021%_))
                      (_%tail?113015%_ _%rest113034%_)))))
            (if (__AST-pair? _%$e113021%_)
                (let* ((_%$tgt113025113039%_ (__AST-e _%$e113021%_))
                       (_%$hd113026113042%_ (##car _%$tgt113025113039%_))
                       (_%$tl113027113045%_ (##cdr _%$tgt113025113039%_))
                       (_%hd113049%_ _%$hd113026113042%_)
                       (_%rest113051%_ _%$tl113027113045%_))
                  (if (__AST-id? _%hd113049%_)
                      (_%lp113017%_ _%rest113051%_)
                      '#f))
                (_%$E113023113036%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx113056%_)
        (let ((_%tail?113058%_ __AST-null?))
          (__AST-id-list?__% _%stx113056%_ _%tail?113058%_))))
    (define __AST-id-list?
      (lambda _g113465_
        (let ((_g113464_ (##length _g113465_)))
          (cond ((##fx= _g113464_ 1) (apply __AST-id-list?__0 _g113465_))
                ((##fx= _g113464_ 2) (apply __AST-id-list?__% _g113465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g113465_))))))
    (define __AST-bind-list?
      (lambda (_%stx113006%_)
        (__AST-id-list?__%
         _%stx113006%_
         (lambda (_%e113008%_)
           (let ((_%$e113010%_ (__AST-null? _%e113008%_)))
             (if _%$e113010%_ _%$e113010%_ (__AST-id? _%e113008%_)))))))
    (define __AST-list?__%
      (lambda (_%stx112959%_ _%tail?112960%_)
        (let _%lp112962%_ ((_%rest112964%_ _%stx112959%_))
          (let* ((_%$e112966%_ _%rest112964%_)
                 (_%$E112968112981%_
                  (lambda ()
                    (let* ((_%$E112969112976%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e112966%_)))
                           (_%rest112979%_ _%$e112966%_))
                      (_%tail?112960%_ _%rest112979%_)))))
            (if (__AST-pair? _%$e112966%_)
                (let* ((_%$tgt112970112984%_ (__AST-e _%$e112966%_))
                       (_%$hd112971112987%_ (##car _%$tgt112970112984%_))
                       (_%$tl112972112990%_ (##cdr _%$tgt112970112984%_))
                       (_%rest112994%_ _%$tl112972112990%_))
                  (_%lp112962%_ _%rest112994%_))
                (_%$E112968112981%_))))))
    (define __AST-list?__0
      (lambda (_%stx112999%_)
        (let ((_%tail?113001%_ __AST-null?))
          (__AST-list?__% _%stx112999%_ _%tail?113001%_))))
    (define __AST-list?
      (lambda _g113467_
        (let ((_g113466_ (##length _g113467_)))
          (cond ((##fx= _g113466_ 1) (apply __AST-list?__0 _g113467_))
                ((##fx= _g113466_ 2) (apply __AST-list?__% _g113467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g113467_))))))
    (define __AST->list
      (lambda (_%stx112924%_)
        (let* ((_%$e112926%_ _%stx112924%_)
               (_%$E112928112941%_
                (lambda ()
                  (let* ((_%$E112929112936%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e112926%_)))
                         (_%rest112939%_ _%$e112926%_))
                    (__AST-e _%rest112939%_)))))
          (if (__AST-pair? _%$e112926%_)
              (let* ((_%$tgt112930112944%_ (__AST-e _%$e112926%_))
                     (_%$hd112931112947%_ (##car _%$tgt112930112944%_))
                     (_%$tl112932112950%_ (##cdr _%$tgt112930112944%_))
                     (_%hd112954%_ _%$hd112931112947%_)
                     (_%rest112956%_ _%$tl112932112950%_))
                (cons _%hd112954%_ (__AST->list _%rest112956%_)))
              (_%$E112928112941%_)))))
    (define __AST->datum
      (lambda (_%stx112917%_)
        (if (##structure-instance-of? _%stx112917%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx112917%_))
            (if (pair? _%stx112917%_)
                (cons (__AST->datum (##car _%stx112917%_))
                      (__AST->datum (##cdr _%stx112917%_)))
                (if (vector? _%stx112917%_)
                    (vector-map __AST->datum _%stx112917%_)
                    (if (box? _%stx112917%_)
                        (box (__AST->datum (unbox _%stx112917%_)))
                        _%stx112917%_))))))
    (define get-readenv
      (lambda (_%port112915%_)
        (##make-readenv
         _%port112915%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in112903%_)
        (let ((_%e112905%_ (##read-datum-or-eof (get-readenv _%in112903%_))))
          (if (eof-object? (__AST-e _%e112905%_))
              (__AST-e _%e112905%_)
              _%e112905%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in112911%_ (current-input-port)))
          (read-syntax__% _%in112911%_))))
    (define read-syntax
      (lambda _g113469_
        (let ((_g113468_ (##length _g113469_)))
          (cond ((##fx= _g113468_ 0) (apply read-syntax__0 _g113469_))
                ((##fx= _g113468_ 1) (apply read-syntax__% _g113469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g113469_))))))
    (define read-syntax-from-file
      (lambda (_%path112898%_)
        (let ((_%r112900%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path112898%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r112900%_)
              (cdr (__AST-e (vector-ref _%r112900%_ '1)))
              (error (err-code->string _%r112900%_) _%path112898%_)))))
    (define __wrap-syntax
      (lambda (_%re112895%_ _%e112896%_)
        (if (eof-object? _%e112896%_)
            _%e112896%_
            (##structure AST::t _%e112896%_ (##readenv->locat _%re112895%_)))))
    (define __unwrap-syntax
      (lambda (_%re112892%_ _%e112893%_) (__AST-e _%e112893%_)))
    (define __pp-syntax
      (lambda (_%stx112890%_) (pp (__AST->datum _%stx112890%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt112888%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt112888%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt112888%_ '@list)
          (macro-readtable-brace-handler-set! _%rt112888%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt112888%_
           '#\!
           __read-sharp-bang)
          _%rt112888%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt112884%_ _%kw112885%_)
        (macro-readtable-bracket-handler-set! _%rt112884%_ _%kw112885%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt112881%_ _%kw112882%_)
        (macro-readtable-brace-handler-set! _%rt112881%_ _%kw112882%_)))
    (define __read-sharp-bang
      (lambda (_%re112872%_ _%next112873%_ _%start-pos112874%_)
        (if (eq? _%start-pos112874%_ '0)
            (let* ((_%line112876%_
                    (##read-line
                     (macro-readenv-port _%re112872%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line112878%_
                    (substring
                     _%line112876%_
                     '1
                     (string-length _%line112876%_))))
              (macro-readenv-script-line-set!
               _%re112872%_
               _%script-line112878%_)
              (##script-marker))
            (##read-sharp-bang
             _%re112872%_
             _%next112873%_
             _%start-pos112874%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj112870%_)
        (if (source-location? _%obj112870%_)
            (string? (##locat-container _%obj112870%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj112868%_)
        (if (##locat? _%obj112868%_)
            (##container->path (##locat-container _%obj112868%_))
            '#f)))))
