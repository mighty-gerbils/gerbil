(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712269045)
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
      (lambda _%$args109089%_
        (apply make-instance SyntaxError::t _%$args109089%_)))
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
      (lambda (_%self108973%_ _%port108974%_)
        (let ((_%self108977%_ _%self108973%_))
          (letrec ((_%location108987%_
                    (lambda ()
                      (let _%lp109049%_ ((_%rest109051%_
                                          (##unchecked-structure-ref
                                           _%self108977%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest109052109060%_ _%rest109051%_)
                               (_%else109054109068%_ (lambda () '#f))
                               (_%K109056109077%_
                                (lambda (_%rest109071%_ _%hd109072%_)
                                  (let ((_%$e109074%_
                                         (__AST-source _%hd109072%_)))
                                    (if _%$e109074%_
                                        _%$e109074%_
                                        (_%lp109049%_ _%rest109071%_))))))
                          (if (##pair? _%rest109052109060%_)
                              (let ((_%hd109057109080%_
                                     (##car _%rest109052109060%_))
                                    (_%tl109058109082%_
                                     (##cdr _%rest109052109060%_)))
                                (let* ((_%hd109085%_ _%hd109057109080%_)
                                       (_%rest109087%_ _%tl109058109082%_))
                                  (_%K109056109077%_
                                   _%rest109087%_
                                   _%hd109085%_)))
                              (_%else109054109068%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e108990%_ (_%location108987%_)))
                 (if _%$e108990%_
                     ((lambda (_%where108993%_)
                        (##display-locat _%where108993%_ '#t _%port108974%_))
                      _%$e108990%_)
                     (let () (display '"?"))))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e108996%_
                      (##unchecked-structure-ref _%self108977%_ '4 '#f '#f)))
                 (if _%$e108996%_
                     ((lambda (_%where108999%_)
                        (displayln
                         '" at "
                         _%where108999%_
                         '": "
                         (##unchecked-structure-ref
                          _%self108977%_
                          '2
                          '#f
                          '#f)))
                      _%$e108996%_)
                     (let ()
                       (displayln
                        '": "
                        (##unchecked-structure-ref
                         _%self108977%_
                         '2
                         '#f
                         '#f)))))
               (let* ((_%self.irritants109001109009%_
                       (##unchecked-structure-ref _%self108977%_ '3 '#f '#f))
                      (_%else109003109017%_ (lambda () '#!void))
                      (_%K109005109030%_
                       (lambda (_%rest109020%_ _%stx109021%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx109021%_)
                         (for-each
                          (lambda (_%detail109023%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail109023%_))
                            (let ((_%$e109025%_
                                   (__AST-source _%detail109023%_)))
                              (if _%$e109025%_
                                  ((lambda (_%loc109028%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc109028%_
                                      '#t
                                      _%port108974%_))
                                   _%$e109025%_)
                                  '#!void))
                            (newline))
                          _%rest109020%_))))
                 (if (##pair? _%self.irritants109001109009%_)
                     (let ((_%hd109006109033%_
                            (##car _%self.irritants109001109009%_))
                           (_%tl109007109035%_
                            (##cdr _%self.irritants109001109009%_)))
                       (let* ((_%stx109038%_ _%hd109006109033%_)
                              (_%rest109040%_ _%tl109007109035%_))
                         (_%K109005109030%_ _%rest109040%_ _%stx109038%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont109041109043%_
                          (##unchecked-structure-ref
                           _%self108977%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont109041109043%_
                         (let ((_%cont109046%_ _%cont109041109043%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont109046%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port108974%_)))))
    (__bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message108844%_
               _%irritants108845%_
               _%where108846%_
               _%context108847%_
               _%marks108848%_
               _%phi108849%_)
        (let ((__obj109186
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj109186 _%message108844%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj109186
           _%irritants108845%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj109186 _%where108846%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj109186 _%context108847%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj109186 _%marks108848%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj109186 _%phi108849%_ '6 '#f '#f)
          __obj109186)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where108839%_
               _%message108840%_
               _%stx108841%_
               .
               _%details108842%_)
        (raise (make-syntax-error
                _%message108840%_
                (cons _%stx108841%_ _%details108842%_)
                _%where108839%_
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
      (lambda _%$args108836%_ (apply make-instance AST::t _%$args108836%_)))
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
      (lambda (_%stx108834%_)
        (if (##structure-instance-of? _%stx108834%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx108834%_ '1 '#f '#f)
            _%stx108834%_)))
    (define __AST-source
      (lambda (_%stx108825%_)
        (let _%lp108827%_ ((_%src108829%_ _%stx108825%_))
          (if (##structure-instance-of? _%src108829%_ 'gerbil#AST::t)
              (let ()
                (_%lp108827%_
                 (##unchecked-structure-ref _%src108829%_ '2 '#f '#f)))
              (if (##locat? _%src108829%_)
                  (let () _%src108829%_)
                  (let () '#f))))))
    (define __AST
      (lambda (_%e108817%_ _%src-stx108818%_)
        (let ((_%src108820%_ (__AST-source _%src-stx108818%_)))
          (if (or (##structure-instance-of? _%e108817%_ 'gerbil#AST::t)
                  (not _%src108820%_))
              _%e108817%_
              (##structure AST::t _%e108817%_ _%src108820%_)))))
    (define __AST-eq?
      (lambda (_%stx108814%_ _%obj108815%_)
        (eq? (__AST-e _%stx108814%_) _%obj108815%_)))
    (define __AST-pair?
      (lambda (_%stx108812%_) (pair? (__AST-e _%stx108812%_))))
    (define __AST-null?
      (lambda (_%stx108810%_) (null? (__AST-e _%stx108810%_))))
    (define __AST-datum?
      (lambda (_%stx108791%_)
        (let* ((_%e108793%_ (__AST-e _%stx108791%_))
               (_%$e108795%_ (number? _%e108793%_)))
          (if _%$e108795%_
              _%$e108795%_
              (let ((_%$e108798%_ (string? _%e108793%_)))
                (if _%$e108798%_
                    _%$e108798%_
                    (let ((_%$e108801%_ (char? _%e108793%_)))
                      (if _%$e108801%_
                          _%$e108801%_
                          (let ((_%$e108804%_ (keyword? _%e108793%_)))
                            (if _%$e108804%_
                                _%$e108804%_
                                (let ((_%$e108807%_ (boolean? _%e108793%_)))
                                  (if _%$e108807%_
                                      _%$e108807%_
                                      (eq? _%e108793%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx108789%_) (symbol? (__AST-e _%stx108789%_))))
    (define __AST-id-list?__%
      (lambda (_%stx108740%_ _%tail?108741%_)
        (let _%lp108743%_ ((_%rest108745%_ _%stx108740%_))
          (let* ((_%$e108747%_ _%rest108745%_)
                 (_%$E108749108762%_
                  (lambda ()
                    (let* ((_%$E108750108757%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108747%_)))
                           (_%rest108760%_ _%$e108747%_))
                      (_%tail?108741%_ _%rest108760%_)))))
            (if (__AST-pair? _%$e108747%_)
                (let* ((_%$tgt108751108765%_ (__AST-e _%$e108747%_))
                       (_%$hd108752108768%_ (##car _%$tgt108751108765%_))
                       (_%$tl108753108771%_ (##cdr _%$tgt108751108765%_)))
                  (let* ((_%hd108775%_ _%$hd108752108768%_)
                         (_%rest108777%_ _%$tl108753108771%_))
                    (if (__AST-id? _%hd108775%_)
                        (_%lp108743%_ _%rest108777%_)
                        '#f)))
                (_%$E108749108762%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx108782%_)
        (let ((_%tail?108784%_ __AST-null?))
          (__AST-id-list?__% _%stx108782%_ _%tail?108784%_))))
    (define __AST-id-list?
      (lambda _g109189_
        (let ((_g109188_ (##length _g109189_)))
          (cond ((##fx= _g109188_ 1)
                 (apply (lambda (_%stx108782%_)
                          (__AST-id-list?__0 _%stx108782%_))
                        _g109189_))
                ((##fx= _g109188_ 2)
                 (apply (lambda (_%stx108786%_ _%tail?108787%_)
                          (__AST-id-list?__% _%stx108786%_ _%tail?108787%_))
                        _g109189_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g109189_))))))
    (define __AST-bind-list?
      (lambda (_%stx108732%_)
        (__AST-id-list?__%
         _%stx108732%_
         (lambda (_%e108734%_)
           (let ((_%$e108736%_ (__AST-null? _%e108734%_)))
             (if _%$e108736%_ _%$e108736%_ (__AST-id? _%e108734%_)))))))
    (define __AST-list?__%
      (lambda (_%stx108685%_ _%tail?108686%_)
        (let _%lp108688%_ ((_%rest108690%_ _%stx108685%_))
          (let* ((_%$e108692%_ _%rest108690%_)
                 (_%$E108694108707%_
                  (lambda ()
                    (let* ((_%$E108695108702%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108692%_)))
                           (_%rest108705%_ _%$e108692%_))
                      (_%tail?108686%_ _%rest108705%_)))))
            (if (__AST-pair? _%$e108692%_)
                (let* ((_%$tgt108696108710%_ (__AST-e _%$e108692%_))
                       (_%$hd108697108713%_ (##car _%$tgt108696108710%_))
                       (_%$tl108698108716%_ (##cdr _%$tgt108696108710%_))
                       (_%rest108720%_ _%$tl108698108716%_))
                  (_%lp108688%_ _%rest108720%_))
                (_%$E108694108707%_))))))
    (define __AST-list?__0
      (lambda (_%stx108725%_)
        (let ((_%tail?108727%_ __AST-null?))
          (__AST-list?__% _%stx108725%_ _%tail?108727%_))))
    (define __AST-list?
      (lambda _g109191_
        (let ((_g109190_ (##length _g109191_)))
          (cond ((##fx= _g109190_ 1)
                 (apply (lambda (_%stx108725%_) (__AST-list?__0 _%stx108725%_))
                        _g109191_))
                ((##fx= _g109190_ 2)
                 (apply (lambda (_%stx108729%_ _%tail?108730%_)
                          (__AST-list?__% _%stx108729%_ _%tail?108730%_))
                        _g109191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g109191_))))))
    (define __AST->list
      (lambda (_%stx108650%_)
        (let* ((_%$e108652%_ _%stx108650%_)
               (_%$E108654108667%_
                (lambda ()
                  (let* ((_%$E108655108662%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e108652%_)))
                         (_%rest108665%_ _%$e108652%_))
                    (__AST-e _%rest108665%_)))))
          (if (__AST-pair? _%$e108652%_)
              (let* ((_%$tgt108656108670%_ (__AST-e _%$e108652%_))
                     (_%$hd108657108673%_ (##car _%$tgt108656108670%_))
                     (_%$tl108658108676%_ (##cdr _%$tgt108656108670%_)))
                (let* ((_%hd108680%_ _%$hd108657108673%_)
                       (_%rest108682%_ _%$tl108658108676%_))
                  (cons _%hd108680%_ (__AST->list _%rest108682%_))))
              (_%$E108654108667%_)))))
    (define __AST->datum
      (lambda (_%stx108643%_)
        (if (##structure-instance-of? _%stx108643%_ 'gerbil#AST::t)
            (let () (__AST->datum (__AST-e _%stx108643%_)))
            (if (pair? _%stx108643%_)
                (let ()
                  (cons (__AST->datum (car _%stx108643%_))
                        (__AST->datum (cdr _%stx108643%_))))
                (if (vector? _%stx108643%_)
                    (let () (vector-map __AST->datum _%stx108643%_))
                    (if (box? _%stx108643%_)
                        (let () (box (__AST->datum (unbox _%stx108643%_))))
                        (let () _%stx108643%_)))))))
    (define get-readenv
      (lambda (_%port108641%_)
        (##make-readenv
         _%port108641%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in108629%_)
        (let ((_%e108631%_ (##read-datum-or-eof (get-readenv _%in108629%_))))
          (if (eof-object? (__AST-e _%e108631%_))
              (__AST-e _%e108631%_)
              _%e108631%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in108637%_ (current-input-port)))
          (read-syntax__% _%in108637%_))))
    (define read-syntax
      (lambda _g109193_
        (let ((_g109192_ (##length _g109193_)))
          (cond ((##fx= _g109192_ 0)
                 (apply (lambda () (read-syntax__0)) _g109193_))
                ((##fx= _g109192_ 1)
                 (apply (lambda (_%in108639%_) (read-syntax__% _%in108639%_))
                        _g109193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g109193_))))))
    (define read-syntax-from-file
      (lambda (_%path108624%_)
        (let ((_%r108626%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path108624%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r108626%_)
              (cdr (__AST-e (vector-ref _%r108626%_ '1)))
              (error (err-code->string _%r108626%_) _%path108624%_)))))
    (define __wrap-syntax
      (lambda (_%re108621%_ _%e108622%_)
        (if (eof-object? _%e108622%_)
            _%e108622%_
            (##structure AST::t _%e108622%_ (##readenv->locat _%re108621%_)))))
    (define __unwrap-syntax
      (lambda (_%re108618%_ _%e108619%_) (__AST-e _%e108619%_)))
    (define __pp-syntax
      (lambda (_%stx108616%_) (pp (__AST->datum _%stx108616%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt108614%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt108614%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt108614%_ '@list)
          (macro-readtable-brace-handler-set! _%rt108614%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt108614%_
           '#\!
           __read-sharp-bang)
          _%rt108614%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt108610%_ _%kw108611%_)
        (macro-readtable-bracket-handler-set! _%rt108610%_ _%kw108611%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt108607%_ _%kw108608%_)
        (macro-readtable-brace-handler-set! _%rt108607%_ _%kw108608%_)))
    (define __read-sharp-bang
      (lambda (_%re108598%_ _%next108599%_ _%start-pos108600%_)
        (if (eq? _%start-pos108600%_ '0)
            (let* ((_%line108602%_
                    (##read-line
                     (macro-readenv-port _%re108598%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line108604%_
                    (substring
                     _%line108602%_
                     '1
                     (string-length _%line108602%_))))
              (macro-readenv-script-line-set!
               _%re108598%_
               _%script-line108604%_)
              (##script-marker))
            (##read-sharp-bang
             _%re108598%_
             _%next108599%_
             _%start-pos108600%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj108596%_)
        (if (source-location? _%obj108596%_)
            (string? (##locat-container _%obj108596%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj108594%_)
        (if (##locat? _%obj108594%_)
            (##container->path (##locat-container _%obj108594%_))
            '#f)))))
