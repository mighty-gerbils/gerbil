(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1742237312)
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
      (lambda _%$args113413%_
        (apply make-instance SyntaxError::t _%$args113413%_)))
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
      (lambda (_%self112914113295%_ _%port113297%_)
        (let* ((_%self113299%_ _%self112914113295%_)
               (_%self113301%_ _%self113299%_))
          (letrec ((_%location113311%_
                    (lambda ()
                      (let _%lp113373%_ ((_%rest113375%_
                                          (##unchecked-structure-ref
                                           _%self113301%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest113376113384%_ _%rest113375%_)
                               (_%else113378113392%_ (lambda () '#f))
                               (_%K113380113401%_
                                (lambda (_%rest113395%_ _%hd113396%_)
                                  (let ((_%$e113398%_
                                         (__AST-source _%hd113396%_)))
                                    (if _%$e113398%_
                                        _%$e113398%_
                                        (_%lp113373%_ _%rest113395%_))))))
                          (if (pair? _%rest113376113384%_)
                              (let ((_%hd113381113404%_
                                     (##car _%rest113376113384%_))
                                    (_%tl113382113406%_
                                     (##cdr _%rest113376113384%_)))
                                (let* ((_%hd113409%_ _%hd113381113404%_)
                                       (_%rest113411%_ _%tl113382113406%_))
                                  (_%K113380113401%_
                                   _%rest113411%_
                                   _%hd113409%_)))
                              (_%else113378113392%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e113314%_ (_%location113311%_)))
                 (if _%$e113314%_
                     ((lambda (_%where113317%_)
                        (##display-locat _%where113317%_ '#t _%port113297%_))
                      _%$e113314%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e113320%_
                      (##unchecked-structure-ref _%self113301%_ '4 '#f '#f)))
                 (if _%$e113320%_
                     ((lambda (_%where113323%_)
                        (displayln
                         '" at "
                         _%where113323%_
                         '": "
                         (##unchecked-structure-ref
                          _%self113301%_
                          '2
                          '#f
                          '#f)))
                      _%$e113320%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self113301%_ '2 '#f '#f))))
               (let* ((_%self.irritants113325113333%_
                       (##unchecked-structure-ref _%self113301%_ '3 '#f '#f))
                      (_%else113327113341%_ (lambda () '#!void))
                      (_%K113329113354%_
                       (lambda (_%rest113344%_ _%stx113345%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx113345%_)
                         (for-each
                          (lambda (_%detail113347%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail113347%_))
                            (let ((_%$e113349%_
                                   (__AST-source _%detail113347%_)))
                              (if _%$e113349%_
                                  ((lambda (_%loc113352%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc113352%_
                                      '#t
                                      _%port113297%_))
                                   _%$e113349%_)
                                  '#!void))
                            (newline))
                          _%rest113344%_))))
                 (if (pair? _%self.irritants113325113333%_)
                     (let ((_%hd113330113357%_
                            (##car _%self.irritants113325113333%_))
                           (_%tl113331113359%_
                            (##cdr _%self.irritants113325113333%_)))
                       (let* ((_%stx113362%_ _%hd113330113357%_)
                              (_%rest113364%_ _%tl113331113359%_))
                         (_%K113329113354%_ _%rest113364%_ _%stx113362%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont113365113367%_
                          (##unchecked-structure-ref
                           _%self113301%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont113365113367%_
                         (let ((_%cont113370%_ _%cont113365113367%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont113370%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port113297%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message113166%_
               _%irritants113167%_
               _%where113168%_
               _%context113169%_
               _%marks113170%_
               _%phi113171%_)
        (let ((__obj113510
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj113510 _%message113166%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj113510
           _%irritants113167%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj113510 _%where113168%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj113510 _%context113169%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj113510 _%marks113170%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj113510 _%phi113171%_ '6 '#f '#f)
          __obj113510)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where113161%_
               _%message113162%_
               _%stx113163%_
               .
               _%details113164%_)
        (raise (make-syntax-error
                _%message113162%_
                (cons _%stx113163%_ _%details113164%_)
                _%where113161%_
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
      (lambda _%$args113158%_ (apply make-instance AST::t _%$args113158%_)))
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
      (lambda (_%stx113156%_)
        (if (##structure-instance-of? _%stx113156%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx113156%_ '1 '#f '#f)
            _%stx113156%_)))
    (define __AST-source
      (lambda (_%stx113147%_)
        (let _%lp113149%_ ((_%src113151%_ _%stx113147%_))
          (if (##structure-instance-of? _%src113151%_ 'gerbil#AST::t)
              (_%lp113149%_
               (##unchecked-structure-ref _%src113151%_ '2 '#f '#f))
              (if (##locat? _%src113151%_) _%src113151%_ '#f)))))
    (define __AST
      (lambda (_%e113139%_ _%src-stx113140%_)
        (let ((_%src113142%_ (__AST-source _%src-stx113140%_)))
          (if (or (##structure-instance-of? _%e113139%_ 'gerbil#AST::t)
                  (not _%src113142%_))
              _%e113139%_
              (##structure AST::t _%e113139%_ _%src113142%_)))))
    (define __AST-eq?
      (lambda (_%stx113136%_ _%obj113137%_)
        (eq? (__AST-e _%stx113136%_) _%obj113137%_)))
    (define __AST-pair?
      (lambda (_%stx113134%_) (pair? (__AST-e _%stx113134%_))))
    (define __AST-null?
      (lambda (_%stx113132%_) (null? (__AST-e _%stx113132%_))))
    (define __AST-datum?
      (lambda (_%stx113113%_)
        (let* ((_%e113115%_ (__AST-e _%stx113113%_))
               (_%$e113117%_ (number? _%e113115%_)))
          (if _%$e113117%_
              _%$e113117%_
              (let ((_%$e113120%_ (string? _%e113115%_)))
                (if _%$e113120%_
                    _%$e113120%_
                    (let ((_%$e113123%_ (char? _%e113115%_)))
                      (if _%$e113123%_
                          _%$e113123%_
                          (let ((_%$e113126%_ (keyword? _%e113115%_)))
                            (if _%$e113126%_
                                _%$e113126%_
                                (let ((_%$e113129%_ (boolean? _%e113115%_)))
                                  (if _%$e113129%_
                                      _%$e113129%_
                                      (eq? _%e113115%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx113111%_) (symbol? (__AST-e _%stx113111%_))))
    (define __AST-id-list?__%
      (lambda (_%stx113062%_ _%tail?113063%_)
        (let _%lp113065%_ ((_%rest113067%_ _%stx113062%_))
          (let* ((_%$e113069%_ _%rest113067%_)
                 (_%$E113071113084%_
                  (lambda ()
                    (let* ((_%$E113072113079%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e113069%_)))
                           (_%rest113082%_ _%$e113069%_))
                      (_%tail?113063%_ _%rest113082%_)))))
            (if (__AST-pair? _%$e113069%_)
                (let* ((_%$tgt113073113087%_ (__AST-e _%$e113069%_))
                       (_%$hd113074113090%_ (##car _%$tgt113073113087%_))
                       (_%$tl113075113093%_ (##cdr _%$tgt113073113087%_))
                       (_%hd113097%_ _%$hd113074113090%_)
                       (_%rest113099%_ _%$tl113075113093%_))
                  (if (__AST-id? _%hd113097%_)
                      (_%lp113065%_ _%rest113099%_)
                      '#f))
                (_%$E113071113084%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx113104%_)
        (let ((_%tail?113106%_ __AST-null?))
          (__AST-id-list?__% _%stx113104%_ _%tail?113106%_))))
    (define __AST-id-list?
      (lambda _g113513_
        (let ((_g113512_ (##length _g113513_)))
          (cond ((##fx= _g113512_ 1) (apply __AST-id-list?__0 _g113513_))
                ((##fx= _g113512_ 2) (apply __AST-id-list?__% _g113513_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g113513_))))))
    (define __AST-bind-list?
      (lambda (_%stx113054%_)
        (__AST-id-list?__%
         _%stx113054%_
         (lambda (_%e113056%_)
           (let ((_%$e113058%_ (__AST-null? _%e113056%_)))
             (if _%$e113058%_ _%$e113058%_ (__AST-id? _%e113056%_)))))))
    (define __AST-list?__%
      (lambda (_%stx113007%_ _%tail?113008%_)
        (let _%lp113010%_ ((_%rest113012%_ _%stx113007%_))
          (let* ((_%$e113014%_ _%rest113012%_)
                 (_%$E113016113029%_
                  (lambda ()
                    (let* ((_%$E113017113024%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e113014%_)))
                           (_%rest113027%_ _%$e113014%_))
                      (_%tail?113008%_ _%rest113027%_)))))
            (if (__AST-pair? _%$e113014%_)
                (let* ((_%$tgt113018113032%_ (__AST-e _%$e113014%_))
                       (_%$hd113019113035%_ (##car _%$tgt113018113032%_))
                       (_%$tl113020113038%_ (##cdr _%$tgt113018113032%_))
                       (_%rest113042%_ _%$tl113020113038%_))
                  (_%lp113010%_ _%rest113042%_))
                (_%$E113016113029%_))))))
    (define __AST-list?__0
      (lambda (_%stx113047%_)
        (let ((_%tail?113049%_ __AST-null?))
          (__AST-list?__% _%stx113047%_ _%tail?113049%_))))
    (define __AST-list?
      (lambda _g113515_
        (let ((_g113514_ (##length _g113515_)))
          (cond ((##fx= _g113514_ 1) (apply __AST-list?__0 _g113515_))
                ((##fx= _g113514_ 2) (apply __AST-list?__% _g113515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g113515_))))))
    (define __AST->list
      (lambda (_%stx112972%_)
        (let* ((_%$e112974%_ _%stx112972%_)
               (_%$E112976112989%_
                (lambda ()
                  (let* ((_%$E112977112984%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e112974%_)))
                         (_%rest112987%_ _%$e112974%_))
                    (__AST-e _%rest112987%_)))))
          (if (__AST-pair? _%$e112974%_)
              (let* ((_%$tgt112978112992%_ (__AST-e _%$e112974%_))
                     (_%$hd112979112995%_ (##car _%$tgt112978112992%_))
                     (_%$tl112980112998%_ (##cdr _%$tgt112978112992%_))
                     (_%hd113002%_ _%$hd112979112995%_)
                     (_%rest113004%_ _%$tl112980112998%_))
                (cons _%hd113002%_ (__AST->list _%rest113004%_)))
              (_%$E112976112989%_)))))
    (define __AST->datum
      (lambda (_%stx112965%_)
        (if (##structure-instance-of? _%stx112965%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx112965%_))
            (if (pair? _%stx112965%_)
                (cons (__AST->datum (##car _%stx112965%_))
                      (__AST->datum (##cdr _%stx112965%_)))
                (if (vector? _%stx112965%_)
                    (vector-map __AST->datum _%stx112965%_)
                    (if (box? _%stx112965%_)
                        (box (__AST->datum (unbox _%stx112965%_)))
                        _%stx112965%_))))))
    (define get-readenv
      (lambda (_%port112963%_)
        (##make-readenv
         _%port112963%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in112951%_)
        (let ((_%e112953%_ (##read-datum-or-eof (get-readenv _%in112951%_))))
          (if (eof-object? (__AST-e _%e112953%_))
              (__AST-e _%e112953%_)
              _%e112953%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in112959%_ (current-input-port)))
          (read-syntax__% _%in112959%_))))
    (define read-syntax
      (lambda _g113517_
        (let ((_g113516_ (##length _g113517_)))
          (cond ((##fx= _g113516_ 0) (apply read-syntax__0 _g113517_))
                ((##fx= _g113516_ 1) (apply read-syntax__% _g113517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g113517_))))))
    (define read-syntax-from-file
      (lambda (_%path112946%_)
        (let ((_%r112948%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path112946%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r112948%_)
              (cdr (__AST-e (vector-ref _%r112948%_ '1)))
              (error (err-code->string _%r112948%_) _%path112946%_)))))
    (define __wrap-syntax
      (lambda (_%re112943%_ _%e112944%_)
        (if (eof-object? _%e112944%_)
            _%e112944%_
            (##structure AST::t _%e112944%_ (##readenv->locat _%re112943%_)))))
    (define __unwrap-syntax
      (lambda (_%re112940%_ _%e112941%_) (__AST-e _%e112941%_)))
    (define __pp-syntax
      (lambda (_%stx112938%_) (pp (__AST->datum _%stx112938%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt112936%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt112936%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt112936%_ '@list)
          (macro-readtable-brace-handler-set! _%rt112936%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt112936%_
           '#\!
           __read-sharp-bang)
          _%rt112936%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt112932%_ _%kw112933%_)
        (macro-readtable-bracket-handler-set! _%rt112932%_ _%kw112933%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt112929%_ _%kw112930%_)
        (macro-readtable-brace-handler-set! _%rt112929%_ _%kw112930%_)))
    (define __read-sharp-bang
      (lambda (_%re112920%_ _%next112921%_ _%start-pos112922%_)
        (if (eq? _%start-pos112922%_ '0)
            (let* ((_%line112924%_
                    (##read-line
                     (macro-readenv-port _%re112920%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line112926%_
                    (substring
                     _%line112924%_
                     '1
                     (string-length _%line112924%_))))
              (macro-readenv-script-line-set!
               _%re112920%_
               _%script-line112926%_)
              (##script-marker))
            (##read-sharp-bang
             _%re112920%_
             _%next112921%_
             _%start-pos112922%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj112918%_)
        (if (source-location? _%obj112918%_)
            (string? (##locat-container _%obj112918%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj112916%_)
        (if (##locat? _%obj112916%_)
            (##container->path (##locat-container _%obj112916%_))
            '#f)))))
