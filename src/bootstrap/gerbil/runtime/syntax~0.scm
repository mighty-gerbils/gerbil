(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1734225193)
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
      (lambda _%$args113369%_
        (apply make-instance SyntaxError::t _%$args113369%_)))
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
      (lambda (_%self112870113251%_ _%port113253%_)
        (let* ((_%self113255%_ _%self112870113251%_)
               (_%self113257%_ _%self113255%_))
          (letrec ((_%location113267%_
                    (lambda ()
                      (let _%lp113329%_ ((_%rest113331%_
                                          (##unchecked-structure-ref
                                           _%self113257%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest113332113340%_ _%rest113331%_)
                               (_%else113334113348%_ (lambda () '#f))
                               (_%K113336113357%_
                                (lambda (_%rest113351%_ _%hd113352%_)
                                  (let ((_%$e113354%_
                                         (__AST-source _%hd113352%_)))
                                    (if _%$e113354%_
                                        _%$e113354%_
                                        (_%lp113329%_ _%rest113351%_))))))
                          (if (pair? _%rest113332113340%_)
                              (let ((_%hd113337113360%_
                                     (##car _%rest113332113340%_))
                                    (_%tl113338113362%_
                                     (##cdr _%rest113332113340%_)))
                                (let* ((_%hd113365%_ _%hd113337113360%_)
                                       (_%rest113367%_ _%tl113338113362%_))
                                  (_%K113336113357%_
                                   _%rest113367%_
                                   _%hd113365%_)))
                              (_%else113334113348%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e113270%_ (_%location113267%_)))
                 (if _%$e113270%_
                     ((lambda (_%where113273%_)
                        (##display-locat _%where113273%_ '#t _%port113253%_))
                      _%$e113270%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e113276%_
                      (##unchecked-structure-ref _%self113257%_ '4 '#f '#f)))
                 (if _%$e113276%_
                     ((lambda (_%where113279%_)
                        (displayln
                         '" at "
                         _%where113279%_
                         '": "
                         (##unchecked-structure-ref
                          _%self113257%_
                          '2
                          '#f
                          '#f)))
                      _%$e113276%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self113257%_ '2 '#f '#f))))
               (let* ((_%self.irritants113281113289%_
                       (##unchecked-structure-ref _%self113257%_ '3 '#f '#f))
                      (_%else113283113297%_ (lambda () '#!void))
                      (_%K113285113310%_
                       (lambda (_%rest113300%_ _%stx113301%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx113301%_)
                         (for-each
                          (lambda (_%detail113303%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail113303%_))
                            (let ((_%$e113305%_
                                   (__AST-source _%detail113303%_)))
                              (if _%$e113305%_
                                  ((lambda (_%loc113308%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc113308%_
                                      '#t
                                      _%port113253%_))
                                   _%$e113305%_)
                                  '#!void))
                            (newline))
                          _%rest113300%_))))
                 (if (pair? _%self.irritants113281113289%_)
                     (let ((_%hd113286113313%_
                            (##car _%self.irritants113281113289%_))
                           (_%tl113287113315%_
                            (##cdr _%self.irritants113281113289%_)))
                       (let* ((_%stx113318%_ _%hd113286113313%_)
                              (_%rest113320%_ _%tl113287113315%_))
                         (_%K113285113310%_ _%rest113320%_ _%stx113318%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont113321113323%_
                          (##unchecked-structure-ref
                           _%self113257%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont113321113323%_
                         (let ((_%cont113326%_ _%cont113321113323%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont113326%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port113253%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message113122%_
               _%irritants113123%_
               _%where113124%_
               _%context113125%_
               _%marks113126%_
               _%phi113127%_)
        (let ((__obj113466
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj113466 _%message113122%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj113466
           _%irritants113123%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj113466 _%where113124%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj113466 _%context113125%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj113466 _%marks113126%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj113466 _%phi113127%_ '6 '#f '#f)
          __obj113466)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where113117%_
               _%message113118%_
               _%stx113119%_
               .
               _%details113120%_)
        (raise (make-syntax-error
                _%message113118%_
                (cons _%stx113119%_ _%details113120%_)
                _%where113117%_
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
      (lambda _%$args113114%_ (apply make-instance AST::t _%$args113114%_)))
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
      (lambda (_%stx113112%_)
        (if (##structure-instance-of? _%stx113112%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx113112%_ '1 '#f '#f)
            _%stx113112%_)))
    (define __AST-source
      (lambda (_%stx113103%_)
        (let _%lp113105%_ ((_%src113107%_ _%stx113103%_))
          (if (##structure-instance-of? _%src113107%_ 'gerbil#AST::t)
              (_%lp113105%_
               (##unchecked-structure-ref _%src113107%_ '2 '#f '#f))
              (if (##locat? _%src113107%_) _%src113107%_ '#f)))))
    (define __AST
      (lambda (_%e113095%_ _%src-stx113096%_)
        (let ((_%src113098%_ (__AST-source _%src-stx113096%_)))
          (if (or (##structure-instance-of? _%e113095%_ 'gerbil#AST::t)
                  (not _%src113098%_))
              _%e113095%_
              (##structure AST::t _%e113095%_ _%src113098%_)))))
    (define __AST-eq?
      (lambda (_%stx113092%_ _%obj113093%_)
        (eq? (__AST-e _%stx113092%_) _%obj113093%_)))
    (define __AST-pair?
      (lambda (_%stx113090%_) (pair? (__AST-e _%stx113090%_))))
    (define __AST-null?
      (lambda (_%stx113088%_) (null? (__AST-e _%stx113088%_))))
    (define __AST-datum?
      (lambda (_%stx113069%_)
        (let* ((_%e113071%_ (__AST-e _%stx113069%_))
               (_%$e113073%_ (number? _%e113071%_)))
          (if _%$e113073%_
              _%$e113073%_
              (let ((_%$e113076%_ (string? _%e113071%_)))
                (if _%$e113076%_
                    _%$e113076%_
                    (let ((_%$e113079%_ (char? _%e113071%_)))
                      (if _%$e113079%_
                          _%$e113079%_
                          (let ((_%$e113082%_ (keyword? _%e113071%_)))
                            (if _%$e113082%_
                                _%$e113082%_
                                (let ((_%$e113085%_ (boolean? _%e113071%_)))
                                  (if _%$e113085%_
                                      _%$e113085%_
                                      (eq? _%e113071%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx113067%_) (symbol? (__AST-e _%stx113067%_))))
    (define __AST-id-list?__%
      (lambda (_%stx113018%_ _%tail?113019%_)
        (let _%lp113021%_ ((_%rest113023%_ _%stx113018%_))
          (let* ((_%$e113025%_ _%rest113023%_)
                 (_%$E113027113040%_
                  (lambda ()
                    (let* ((_%$E113028113035%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e113025%_)))
                           (_%rest113038%_ _%$e113025%_))
                      (_%tail?113019%_ _%rest113038%_)))))
            (if (__AST-pair? _%$e113025%_)
                (let* ((_%$tgt113029113043%_ (__AST-e _%$e113025%_))
                       (_%$hd113030113046%_ (##car _%$tgt113029113043%_))
                       (_%$tl113031113049%_ (##cdr _%$tgt113029113043%_))
                       (_%hd113053%_ _%$hd113030113046%_)
                       (_%rest113055%_ _%$tl113031113049%_))
                  (if (__AST-id? _%hd113053%_)
                      (_%lp113021%_ _%rest113055%_)
                      '#f))
                (_%$E113027113040%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx113060%_)
        (let ((_%tail?113062%_ __AST-null?))
          (__AST-id-list?__% _%stx113060%_ _%tail?113062%_))))
    (define __AST-id-list?
      (lambda _g113469_
        (let ((_g113468_ (##length _g113469_)))
          (cond ((##fx= _g113468_ 1) (apply __AST-id-list?__0 _g113469_))
                ((##fx= _g113468_ 2) (apply __AST-id-list?__% _g113469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g113469_))))))
    (define __AST-bind-list?
      (lambda (_%stx113010%_)
        (__AST-id-list?__%
         _%stx113010%_
         (lambda (_%e113012%_)
           (let ((_%$e113014%_ (__AST-null? _%e113012%_)))
             (if _%$e113014%_ _%$e113014%_ (__AST-id? _%e113012%_)))))))
    (define __AST-list?__%
      (lambda (_%stx112963%_ _%tail?112964%_)
        (let _%lp112966%_ ((_%rest112968%_ _%stx112963%_))
          (let* ((_%$e112970%_ _%rest112968%_)
                 (_%$E112972112985%_
                  (lambda ()
                    (let* ((_%$E112973112980%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e112970%_)))
                           (_%rest112983%_ _%$e112970%_))
                      (_%tail?112964%_ _%rest112983%_)))))
            (if (__AST-pair? _%$e112970%_)
                (let* ((_%$tgt112974112988%_ (__AST-e _%$e112970%_))
                       (_%$hd112975112991%_ (##car _%$tgt112974112988%_))
                       (_%$tl112976112994%_ (##cdr _%$tgt112974112988%_))
                       (_%rest112998%_ _%$tl112976112994%_))
                  (_%lp112966%_ _%rest112998%_))
                (_%$E112972112985%_))))))
    (define __AST-list?__0
      (lambda (_%stx113003%_)
        (let ((_%tail?113005%_ __AST-null?))
          (__AST-list?__% _%stx113003%_ _%tail?113005%_))))
    (define __AST-list?
      (lambda _g113471_
        (let ((_g113470_ (##length _g113471_)))
          (cond ((##fx= _g113470_ 1) (apply __AST-list?__0 _g113471_))
                ((##fx= _g113470_ 2) (apply __AST-list?__% _g113471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g113471_))))))
    (define __AST->list
      (lambda (_%stx112928%_)
        (let* ((_%$e112930%_ _%stx112928%_)
               (_%$E112932112945%_
                (lambda ()
                  (let* ((_%$E112933112940%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e112930%_)))
                         (_%rest112943%_ _%$e112930%_))
                    (__AST-e _%rest112943%_)))))
          (if (__AST-pair? _%$e112930%_)
              (let* ((_%$tgt112934112948%_ (__AST-e _%$e112930%_))
                     (_%$hd112935112951%_ (##car _%$tgt112934112948%_))
                     (_%$tl112936112954%_ (##cdr _%$tgt112934112948%_))
                     (_%hd112958%_ _%$hd112935112951%_)
                     (_%rest112960%_ _%$tl112936112954%_))
                (cons _%hd112958%_ (__AST->list _%rest112960%_)))
              (_%$E112932112945%_)))))
    (define __AST->datum
      (lambda (_%stx112921%_)
        (if (##structure-instance-of? _%stx112921%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx112921%_))
            (if (pair? _%stx112921%_)
                (cons (__AST->datum (##car _%stx112921%_))
                      (__AST->datum (##cdr _%stx112921%_)))
                (if (vector? _%stx112921%_)
                    (vector-map __AST->datum _%stx112921%_)
                    (if (box? _%stx112921%_)
                        (box (__AST->datum (unbox _%stx112921%_)))
                        _%stx112921%_))))))
    (define get-readenv
      (lambda (_%port112919%_)
        (##make-readenv
         _%port112919%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in112907%_)
        (let ((_%e112909%_ (##read-datum-or-eof (get-readenv _%in112907%_))))
          (if (eof-object? (__AST-e _%e112909%_))
              (__AST-e _%e112909%_)
              _%e112909%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in112915%_ (current-input-port)))
          (read-syntax__% _%in112915%_))))
    (define read-syntax
      (lambda _g113473_
        (let ((_g113472_ (##length _g113473_)))
          (cond ((##fx= _g113472_ 0) (apply read-syntax__0 _g113473_))
                ((##fx= _g113472_ 1) (apply read-syntax__% _g113473_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g113473_))))))
    (define read-syntax-from-file
      (lambda (_%path112902%_)
        (let ((_%r112904%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path112902%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r112904%_)
              (cdr (__AST-e (vector-ref _%r112904%_ '1)))
              (error (err-code->string _%r112904%_) _%path112902%_)))))
    (define __wrap-syntax
      (lambda (_%re112899%_ _%e112900%_)
        (if (eof-object? _%e112900%_)
            _%e112900%_
            (##structure AST::t _%e112900%_ (##readenv->locat _%re112899%_)))))
    (define __unwrap-syntax
      (lambda (_%re112896%_ _%e112897%_) (__AST-e _%e112897%_)))
    (define __pp-syntax
      (lambda (_%stx112894%_) (pp (__AST->datum _%stx112894%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt112892%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt112892%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt112892%_ '@list)
          (macro-readtable-brace-handler-set! _%rt112892%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt112892%_
           '#\!
           __read-sharp-bang)
          _%rt112892%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt112888%_ _%kw112889%_)
        (macro-readtable-bracket-handler-set! _%rt112888%_ _%kw112889%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt112885%_ _%kw112886%_)
        (macro-readtable-brace-handler-set! _%rt112885%_ _%kw112886%_)))
    (define __read-sharp-bang
      (lambda (_%re112876%_ _%next112877%_ _%start-pos112878%_)
        (if (eq? _%start-pos112878%_ '0)
            (let* ((_%line112880%_
                    (##read-line
                     (macro-readenv-port _%re112876%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line112882%_
                    (substring
                     _%line112880%_
                     '1
                     (string-length _%line112880%_))))
              (macro-readenv-script-line-set!
               _%re112876%_
               _%script-line112882%_)
              (##script-marker))
            (##read-sharp-bang
             _%re112876%_
             _%next112877%_
             _%start-pos112878%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj112874%_)
        (if (source-location? _%obj112874%_)
            (string? (##locat-container _%obj112874%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj112872%_)
        (if (##locat? _%obj112872%_)
            (##container->path (##locat-container _%obj112872%_))
            '#f)))))
