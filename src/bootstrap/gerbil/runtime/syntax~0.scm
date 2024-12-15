(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1734279327)
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
      (lambda _%$args113359%_
        (apply make-instance SyntaxError::t _%$args113359%_)))
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
      (lambda (_%self112860113241%_ _%port113243%_)
        (let* ((_%self113245%_ _%self112860113241%_)
               (_%self113247%_ _%self113245%_))
          (letrec ((_%location113257%_
                    (lambda ()
                      (let _%lp113319%_ ((_%rest113321%_
                                          (##unchecked-structure-ref
                                           _%self113247%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest113322113330%_ _%rest113321%_)
                               (_%else113324113338%_ (lambda () '#f))
                               (_%K113326113347%_
                                (lambda (_%rest113341%_ _%hd113342%_)
                                  (let ((_%$e113344%_
                                         (__AST-source _%hd113342%_)))
                                    (if _%$e113344%_
                                        _%$e113344%_
                                        (_%lp113319%_ _%rest113341%_))))))
                          (if (pair? _%rest113322113330%_)
                              (let ((_%hd113327113350%_
                                     (##car _%rest113322113330%_))
                                    (_%tl113328113352%_
                                     (##cdr _%rest113322113330%_)))
                                (let* ((_%hd113355%_ _%hd113327113350%_)
                                       (_%rest113357%_ _%tl113328113352%_))
                                  (_%K113326113347%_
                                   _%rest113357%_
                                   _%hd113355%_)))
                              (_%else113324113338%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e113260%_ (_%location113257%_)))
                 (if _%$e113260%_
                     ((lambda (_%where113263%_)
                        (##display-locat _%where113263%_ '#t _%port113243%_))
                      _%$e113260%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e113266%_
                      (##unchecked-structure-ref _%self113247%_ '4 '#f '#f)))
                 (if _%$e113266%_
                     ((lambda (_%where113269%_)
                        (displayln
                         '" at "
                         _%where113269%_
                         '": "
                         (##unchecked-structure-ref
                          _%self113247%_
                          '2
                          '#f
                          '#f)))
                      _%$e113266%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self113247%_ '2 '#f '#f))))
               (let* ((_%self.irritants113271113279%_
                       (##unchecked-structure-ref _%self113247%_ '3 '#f '#f))
                      (_%else113273113287%_ (lambda () '#!void))
                      (_%K113275113300%_
                       (lambda (_%rest113290%_ _%stx113291%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx113291%_)
                         (for-each
                          (lambda (_%detail113293%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail113293%_))
                            (let ((_%$e113295%_
                                   (__AST-source _%detail113293%_)))
                              (if _%$e113295%_
                                  ((lambda (_%loc113298%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc113298%_
                                      '#t
                                      _%port113243%_))
                                   _%$e113295%_)
                                  '#!void))
                            (newline))
                          _%rest113290%_))))
                 (if (pair? _%self.irritants113271113279%_)
                     (let ((_%hd113276113303%_
                            (##car _%self.irritants113271113279%_))
                           (_%tl113277113305%_
                            (##cdr _%self.irritants113271113279%_)))
                       (let* ((_%stx113308%_ _%hd113276113303%_)
                              (_%rest113310%_ _%tl113277113305%_))
                         (_%K113275113300%_ _%rest113310%_ _%stx113308%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont113311113313%_
                          (##unchecked-structure-ref
                           _%self113247%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont113311113313%_
                         (let ((_%cont113316%_ _%cont113311113313%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont113316%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port113243%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message113112%_
               _%irritants113113%_
               _%where113114%_
               _%context113115%_
               _%marks113116%_
               _%phi113117%_)
        (let ((__obj113456
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj113456 _%message113112%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj113456
           _%irritants113113%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj113456 _%where113114%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj113456 _%context113115%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj113456 _%marks113116%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj113456 _%phi113117%_ '6 '#f '#f)
          __obj113456)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where113107%_
               _%message113108%_
               _%stx113109%_
               .
               _%details113110%_)
        (raise (make-syntax-error
                _%message113108%_
                (cons _%stx113109%_ _%details113110%_)
                _%where113107%_
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
      (lambda _%$args113104%_ (apply make-instance AST::t _%$args113104%_)))
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
      (lambda (_%stx113102%_)
        (if (##structure-instance-of? _%stx113102%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx113102%_ '1 '#f '#f)
            _%stx113102%_)))
    (define __AST-source
      (lambda (_%stx113093%_)
        (let _%lp113095%_ ((_%src113097%_ _%stx113093%_))
          (if (##structure-instance-of? _%src113097%_ 'gerbil#AST::t)
              (_%lp113095%_
               (##unchecked-structure-ref _%src113097%_ '2 '#f '#f))
              (if (##locat? _%src113097%_) _%src113097%_ '#f)))))
    (define __AST
      (lambda (_%e113085%_ _%src-stx113086%_)
        (let ((_%src113088%_ (__AST-source _%src-stx113086%_)))
          (if (or (##structure-instance-of? _%e113085%_ 'gerbil#AST::t)
                  (not _%src113088%_))
              _%e113085%_
              (##structure AST::t _%e113085%_ _%src113088%_)))))
    (define __AST-eq?
      (lambda (_%stx113082%_ _%obj113083%_)
        (eq? (__AST-e _%stx113082%_) _%obj113083%_)))
    (define __AST-pair?
      (lambda (_%stx113080%_) (pair? (__AST-e _%stx113080%_))))
    (define __AST-null?
      (lambda (_%stx113078%_) (null? (__AST-e _%stx113078%_))))
    (define __AST-datum?
      (lambda (_%stx113059%_)
        (let* ((_%e113061%_ (__AST-e _%stx113059%_))
               (_%$e113063%_ (number? _%e113061%_)))
          (if _%$e113063%_
              _%$e113063%_
              (let ((_%$e113066%_ (string? _%e113061%_)))
                (if _%$e113066%_
                    _%$e113066%_
                    (let ((_%$e113069%_ (char? _%e113061%_)))
                      (if _%$e113069%_
                          _%$e113069%_
                          (let ((_%$e113072%_ (keyword? _%e113061%_)))
                            (if _%$e113072%_
                                _%$e113072%_
                                (let ((_%$e113075%_ (boolean? _%e113061%_)))
                                  (if _%$e113075%_
                                      _%$e113075%_
                                      (eq? _%e113061%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx113057%_) (symbol? (__AST-e _%stx113057%_))))
    (define __AST-id-list?__%
      (lambda (_%stx113008%_ _%tail?113009%_)
        (let _%lp113011%_ ((_%rest113013%_ _%stx113008%_))
          (let* ((_%$e113015%_ _%rest113013%_)
                 (_%$E113017113030%_
                  (lambda ()
                    (let* ((_%$E113018113025%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e113015%_)))
                           (_%rest113028%_ _%$e113015%_))
                      (_%tail?113009%_ _%rest113028%_)))))
            (if (__AST-pair? _%$e113015%_)
                (let* ((_%$tgt113019113033%_ (__AST-e _%$e113015%_))
                       (_%$hd113020113036%_ (##car _%$tgt113019113033%_))
                       (_%$tl113021113039%_ (##cdr _%$tgt113019113033%_))
                       (_%hd113043%_ _%$hd113020113036%_)
                       (_%rest113045%_ _%$tl113021113039%_))
                  (if (__AST-id? _%hd113043%_)
                      (_%lp113011%_ _%rest113045%_)
                      '#f))
                (_%$E113017113030%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx113050%_)
        (let ((_%tail?113052%_ __AST-null?))
          (__AST-id-list?__% _%stx113050%_ _%tail?113052%_))))
    (define __AST-id-list?
      (lambda _g113459_
        (let ((_g113458_ (##length _g113459_)))
          (cond ((##fx= _g113458_ 1) (apply __AST-id-list?__0 _g113459_))
                ((##fx= _g113458_ 2) (apply __AST-id-list?__% _g113459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g113459_))))))
    (define __AST-bind-list?
      (lambda (_%stx113000%_)
        (__AST-id-list?__%
         _%stx113000%_
         (lambda (_%e113002%_)
           (let ((_%$e113004%_ (__AST-null? _%e113002%_)))
             (if _%$e113004%_ _%$e113004%_ (__AST-id? _%e113002%_)))))))
    (define __AST-list?__%
      (lambda (_%stx112953%_ _%tail?112954%_)
        (let _%lp112956%_ ((_%rest112958%_ _%stx112953%_))
          (let* ((_%$e112960%_ _%rest112958%_)
                 (_%$E112962112975%_
                  (lambda ()
                    (let* ((_%$E112963112970%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e112960%_)))
                           (_%rest112973%_ _%$e112960%_))
                      (_%tail?112954%_ _%rest112973%_)))))
            (if (__AST-pair? _%$e112960%_)
                (let* ((_%$tgt112964112978%_ (__AST-e _%$e112960%_))
                       (_%$hd112965112981%_ (##car _%$tgt112964112978%_))
                       (_%$tl112966112984%_ (##cdr _%$tgt112964112978%_))
                       (_%rest112988%_ _%$tl112966112984%_))
                  (_%lp112956%_ _%rest112988%_))
                (_%$E112962112975%_))))))
    (define __AST-list?__0
      (lambda (_%stx112993%_)
        (let ((_%tail?112995%_ __AST-null?))
          (__AST-list?__% _%stx112993%_ _%tail?112995%_))))
    (define __AST-list?
      (lambda _g113461_
        (let ((_g113460_ (##length _g113461_)))
          (cond ((##fx= _g113460_ 1) (apply __AST-list?__0 _g113461_))
                ((##fx= _g113460_ 2) (apply __AST-list?__% _g113461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g113461_))))))
    (define __AST->list
      (lambda (_%stx112918%_)
        (let* ((_%$e112920%_ _%stx112918%_)
               (_%$E112922112935%_
                (lambda ()
                  (let* ((_%$E112923112930%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e112920%_)))
                         (_%rest112933%_ _%$e112920%_))
                    (__AST-e _%rest112933%_)))))
          (if (__AST-pair? _%$e112920%_)
              (let* ((_%$tgt112924112938%_ (__AST-e _%$e112920%_))
                     (_%$hd112925112941%_ (##car _%$tgt112924112938%_))
                     (_%$tl112926112944%_ (##cdr _%$tgt112924112938%_))
                     (_%hd112948%_ _%$hd112925112941%_)
                     (_%rest112950%_ _%$tl112926112944%_))
                (cons _%hd112948%_ (__AST->list _%rest112950%_)))
              (_%$E112922112935%_)))))
    (define __AST->datum
      (lambda (_%stx112911%_)
        (if (##structure-instance-of? _%stx112911%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx112911%_))
            (if (pair? _%stx112911%_)
                (cons (__AST->datum (##car _%stx112911%_))
                      (__AST->datum (##cdr _%stx112911%_)))
                (if (vector? _%stx112911%_)
                    (vector-map __AST->datum _%stx112911%_)
                    (if (box? _%stx112911%_)
                        (box (__AST->datum (unbox _%stx112911%_)))
                        _%stx112911%_))))))
    (define get-readenv
      (lambda (_%port112909%_)
        (##make-readenv
         _%port112909%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in112897%_)
        (let ((_%e112899%_ (##read-datum-or-eof (get-readenv _%in112897%_))))
          (if (eof-object? (__AST-e _%e112899%_))
              (__AST-e _%e112899%_)
              _%e112899%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in112905%_ (current-input-port)))
          (read-syntax__% _%in112905%_))))
    (define read-syntax
      (lambda _g113463_
        (let ((_g113462_ (##length _g113463_)))
          (cond ((##fx= _g113462_ 0) (apply read-syntax__0 _g113463_))
                ((##fx= _g113462_ 1) (apply read-syntax__% _g113463_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g113463_))))))
    (define read-syntax-from-file
      (lambda (_%path112892%_)
        (let ((_%r112894%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path112892%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r112894%_)
              (cdr (__AST-e (vector-ref _%r112894%_ '1)))
              (error (err-code->string _%r112894%_) _%path112892%_)))))
    (define __wrap-syntax
      (lambda (_%re112889%_ _%e112890%_)
        (if (eof-object? _%e112890%_)
            _%e112890%_
            (##structure AST::t _%e112890%_ (##readenv->locat _%re112889%_)))))
    (define __unwrap-syntax
      (lambda (_%re112886%_ _%e112887%_) (__AST-e _%e112887%_)))
    (define __pp-syntax
      (lambda (_%stx112884%_) (pp (__AST->datum _%stx112884%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt112882%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt112882%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt112882%_ '@list)
          (macro-readtable-brace-handler-set! _%rt112882%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt112882%_
           '#\!
           __read-sharp-bang)
          _%rt112882%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt112878%_ _%kw112879%_)
        (macro-readtable-bracket-handler-set! _%rt112878%_ _%kw112879%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt112875%_ _%kw112876%_)
        (macro-readtable-brace-handler-set! _%rt112875%_ _%kw112876%_)))
    (define __read-sharp-bang
      (lambda (_%re112866%_ _%next112867%_ _%start-pos112868%_)
        (if (eq? _%start-pos112868%_ '0)
            (let* ((_%line112870%_
                    (##read-line
                     (macro-readenv-port _%re112866%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line112872%_
                    (substring
                     _%line112870%_
                     '1
                     (string-length _%line112870%_))))
              (macro-readenv-script-line-set!
               _%re112866%_
               _%script-line112872%_)
              (##script-marker))
            (##read-sharp-bang
             _%re112866%_
             _%next112867%_
             _%start-pos112868%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj112864%_)
        (if (source-location? _%obj112864%_)
            (string? (##locat-container _%obj112864%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj112862%_)
        (if (##locat? _%obj112862%_)
            (##container->path (##locat-container _%obj112862%_))
            '#f)))))
