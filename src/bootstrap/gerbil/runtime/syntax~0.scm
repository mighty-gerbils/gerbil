(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712251111)
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
      (lambda _%$args109155%_
        (apply make-instance SyntaxError::t _%$args109155%_)))
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
      (lambda (_%self109039%_ _%port109040%_)
        (let ((_%self109043%_ _%self109039%_))
          (letrec ((_%location109053%_
                    (lambda ()
                      (let _%lp109115%_ ((_%rest109117%_
                                          (##unchecked-structure-ref
                                           _%self109043%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest109118109126%_ _%rest109117%_)
                               (_%else109120109134%_ (lambda () '#f))
                               (_%K109122109143%_
                                (lambda (_%rest109137%_ _%hd109138%_)
                                  (let ((_%$e109140%_
                                         (__AST-source _%hd109138%_)))
                                    (if _%$e109140%_
                                        _%$e109140%_
                                        (_%lp109115%_ _%rest109137%_))))))
                          (if (##pair? _%rest109118109126%_)
                              (let ((_%hd109123109146%_
                                     (##car _%rest109118109126%_))
                                    (_%tl109124109148%_
                                     (##cdr _%rest109118109126%_)))
                                (let* ((_%hd109151%_ _%hd109123109146%_)
                                       (_%rest109153%_ _%tl109124109148%_))
                                  (_%K109122109143%_
                                   _%rest109153%_
                                   _%hd109151%_)))
                              (_%else109120109134%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e109056%_ (_%location109053%_)))
                 (if _%$e109056%_
                     ((lambda (_%where109059%_)
                        (##display-locat _%where109059%_ '#t _%port109040%_))
                      _%$e109056%_)
                     (let () (display '"?"))))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e109062%_
                      (##unchecked-structure-ref _%self109043%_ '4 '#f '#f)))
                 (if _%$e109062%_
                     ((lambda (_%where109065%_)
                        (displayln
                         '" at "
                         _%where109065%_
                         '": "
                         (##unchecked-structure-ref
                          _%self109043%_
                          '2
                          '#f
                          '#f)))
                      _%$e109062%_)
                     (let ()
                       (displayln
                        '": "
                        (##unchecked-structure-ref
                         _%self109043%_
                         '2
                         '#f
                         '#f)))))
               (let* ((_%self.irritants109067109075%_
                       (##unchecked-structure-ref _%self109043%_ '3 '#f '#f))
                      (_%else109069109083%_ (lambda () '#!void))
                      (_%K109071109096%_
                       (lambda (_%rest109086%_ _%stx109087%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx109087%_)
                         (for-each
                          (lambda (_%detail109089%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail109089%_))
                            (let ((_%$e109091%_
                                   (__AST-source _%detail109089%_)))
                              (if _%$e109091%_
                                  ((lambda (_%loc109094%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc109094%_
                                      '#t
                                      _%port109040%_))
                                   _%$e109091%_)
                                  '#!void))
                            (newline))
                          _%rest109086%_))))
                 (if (##pair? _%self.irritants109067109075%_)
                     (let ((_%hd109072109099%_
                            (##car _%self.irritants109067109075%_))
                           (_%tl109073109101%_
                            (##cdr _%self.irritants109067109075%_)))
                       (let* ((_%stx109104%_ _%hd109072109099%_)
                              (_%rest109106%_ _%tl109073109101%_))
                         (_%K109071109096%_ _%rest109106%_ _%stx109104%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont109107109109%_
                          (##unchecked-structure-ref
                           _%self109043%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont109107109109%_
                         (let ((_%cont109112%_ _%cont109107109109%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont109112%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port109040%_)))))
    (__bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message108910%_
               _%irritants108911%_
               _%where108912%_
               _%context108913%_
               _%marks108914%_
               _%phi108915%_)
        (let ((__obj109252
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj109252 _%message108910%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj109252
           _%irritants108911%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj109252 _%where108912%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj109252 _%context108913%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj109252 _%marks108914%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj109252 _%phi108915%_ '6 '#f '#f)
          __obj109252)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where108905%_
               _%message108906%_
               _%stx108907%_
               .
               _%details108908%_)
        (raise (make-syntax-error
                _%message108906%_
                (cons _%stx108907%_ _%details108908%_)
                _%where108905%_
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
      (lambda _%$args108902%_ (apply make-instance AST::t _%$args108902%_)))
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
      (lambda (_%stx108900%_)
        (if (##structure-instance-of? _%stx108900%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx108900%_ '1 '#f '#f)
            _%stx108900%_)))
    (define __AST-source
      (lambda (_%stx108891%_)
        (let _%lp108893%_ ((_%src108895%_ _%stx108891%_))
          (if (##structure-instance-of? _%src108895%_ 'gerbil#AST::t)
              (let ()
                (_%lp108893%_
                 (##unchecked-structure-ref _%src108895%_ '2 '#f '#f)))
              (if (##locat? _%src108895%_)
                  (let () _%src108895%_)
                  (let () '#f))))))
    (define __AST
      (lambda (_%e108883%_ _%src-stx108884%_)
        (let ((_%src108886%_ (__AST-source _%src-stx108884%_)))
          (if (or (##structure-instance-of? _%e108883%_ 'gerbil#AST::t)
                  (not _%src108886%_))
              _%e108883%_
              (##structure AST::t _%e108883%_ _%src108886%_)))))
    (define __AST-eq?
      (lambda (_%stx108880%_ _%obj108881%_)
        (eq? (__AST-e _%stx108880%_) _%obj108881%_)))
    (define __AST-pair?
      (lambda (_%stx108878%_) (pair? (__AST-e _%stx108878%_))))
    (define __AST-null?
      (lambda (_%stx108876%_) (null? (__AST-e _%stx108876%_))))
    (define __AST-datum?
      (lambda (_%stx108857%_)
        (let* ((_%e108859%_ (__AST-e _%stx108857%_))
               (_%$e108861%_ (number? _%e108859%_)))
          (if _%$e108861%_
              _%$e108861%_
              (let ((_%$e108864%_ (string? _%e108859%_)))
                (if _%$e108864%_
                    _%$e108864%_
                    (let ((_%$e108867%_ (char? _%e108859%_)))
                      (if _%$e108867%_
                          _%$e108867%_
                          (let ((_%$e108870%_ (keyword? _%e108859%_)))
                            (if _%$e108870%_
                                _%$e108870%_
                                (let ((_%$e108873%_ (boolean? _%e108859%_)))
                                  (if _%$e108873%_
                                      _%$e108873%_
                                      (eq? _%e108859%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx108855%_) (symbol? (__AST-e _%stx108855%_))))
    (define __AST-id-list?__%
      (lambda (_%stx108806%_ _%tail?108807%_)
        (let _%lp108809%_ ((_%rest108811%_ _%stx108806%_))
          (let* ((_%$e108813%_ _%rest108811%_)
                 (_%$E108815108828%_
                  (lambda ()
                    (let* ((_%$E108816108823%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108813%_)))
                           (_%rest108826%_ _%$e108813%_))
                      (_%tail?108807%_ _%rest108826%_)))))
            (if (__AST-pair? _%$e108813%_)
                (let* ((_%$tgt108817108831%_ (__AST-e _%$e108813%_))
                       (_%$hd108818108834%_ (##car _%$tgt108817108831%_))
                       (_%$tl108819108837%_ (##cdr _%$tgt108817108831%_)))
                  (let* ((_%hd108841%_ _%$hd108818108834%_)
                         (_%rest108843%_ _%$tl108819108837%_))
                    (if (__AST-id? _%hd108841%_)
                        (_%lp108809%_ _%rest108843%_)
                        '#f)))
                (_%$E108815108828%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx108848%_)
        (let ((_%tail?108850%_ __AST-null?))
          (__AST-id-list?__% _%stx108848%_ _%tail?108850%_))))
    (define __AST-id-list?
      (lambda _g109255_
        (let ((_g109254_ (##length _g109255_)))
          (cond ((##fx= _g109254_ 1)
                 (apply (lambda (_%stx108848%_)
                          (__AST-id-list?__0 _%stx108848%_))
                        _g109255_))
                ((##fx= _g109254_ 2)
                 (apply (lambda (_%stx108852%_ _%tail?108853%_)
                          (__AST-id-list?__% _%stx108852%_ _%tail?108853%_))
                        _g109255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g109255_))))))
    (define __AST-bind-list?
      (lambda (_%stx108798%_)
        (__AST-id-list?__%
         _%stx108798%_
         (lambda (_%e108800%_)
           (let ((_%$e108802%_ (__AST-null? _%e108800%_)))
             (if _%$e108802%_ _%$e108802%_ (__AST-id? _%e108800%_)))))))
    (define __AST-list?__%
      (lambda (_%stx108751%_ _%tail?108752%_)
        (let _%lp108754%_ ((_%rest108756%_ _%stx108751%_))
          (let* ((_%$e108758%_ _%rest108756%_)
                 (_%$E108760108773%_
                  (lambda ()
                    (let* ((_%$E108761108768%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108758%_)))
                           (_%rest108771%_ _%$e108758%_))
                      (_%tail?108752%_ _%rest108771%_)))))
            (if (__AST-pair? _%$e108758%_)
                (let* ((_%$tgt108762108776%_ (__AST-e _%$e108758%_))
                       (_%$hd108763108779%_ (##car _%$tgt108762108776%_))
                       (_%$tl108764108782%_ (##cdr _%$tgt108762108776%_))
                       (_%rest108786%_ _%$tl108764108782%_))
                  (_%lp108754%_ _%rest108786%_))
                (_%$E108760108773%_))))))
    (define __AST-list?__0
      (lambda (_%stx108791%_)
        (let ((_%tail?108793%_ __AST-null?))
          (__AST-list?__% _%stx108791%_ _%tail?108793%_))))
    (define __AST-list?
      (lambda _g109257_
        (let ((_g109256_ (##length _g109257_)))
          (cond ((##fx= _g109256_ 1)
                 (apply (lambda (_%stx108791%_) (__AST-list?__0 _%stx108791%_))
                        _g109257_))
                ((##fx= _g109256_ 2)
                 (apply (lambda (_%stx108795%_ _%tail?108796%_)
                          (__AST-list?__% _%stx108795%_ _%tail?108796%_))
                        _g109257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g109257_))))))
    (define __AST->list
      (lambda (_%stx108716%_)
        (let* ((_%$e108718%_ _%stx108716%_)
               (_%$E108720108733%_
                (lambda ()
                  (let* ((_%$E108721108728%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e108718%_)))
                         (_%rest108731%_ _%$e108718%_))
                    (__AST-e _%rest108731%_)))))
          (if (__AST-pair? _%$e108718%_)
              (let* ((_%$tgt108722108736%_ (__AST-e _%$e108718%_))
                     (_%$hd108723108739%_ (##car _%$tgt108722108736%_))
                     (_%$tl108724108742%_ (##cdr _%$tgt108722108736%_)))
                (let* ((_%hd108746%_ _%$hd108723108739%_)
                       (_%rest108748%_ _%$tl108724108742%_))
                  (cons _%hd108746%_ (__AST->list _%rest108748%_))))
              (_%$E108720108733%_)))))
    (define __AST->datum
      (lambda (_%stx108709%_)
        (if (##structure-instance-of? _%stx108709%_ 'gerbil#AST::t)
            (let () (__AST->datum (__AST-e _%stx108709%_)))
            (if (pair? _%stx108709%_)
                (let ()
                  (cons (__AST->datum (car _%stx108709%_))
                        (__AST->datum (cdr _%stx108709%_))))
                (if (vector? _%stx108709%_)
                    (let () (vector-map __AST->datum _%stx108709%_))
                    (if (box? _%stx108709%_)
                        (let () (box (__AST->datum (unbox _%stx108709%_))))
                        (let () _%stx108709%_)))))))
    (define get-readenv
      (lambda (_%port108707%_)
        (##make-readenv
         _%port108707%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in108695%_)
        (let ((_%e108697%_ (##read-datum-or-eof (get-readenv _%in108695%_))))
          (if (eof-object? (__AST-e _%e108697%_))
              (__AST-e _%e108697%_)
              _%e108697%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in108703%_ (current-input-port)))
          (read-syntax__% _%in108703%_))))
    (define read-syntax
      (lambda _g109259_
        (let ((_g109258_ (##length _g109259_)))
          (cond ((##fx= _g109258_ 0)
                 (apply (lambda () (read-syntax__0)) _g109259_))
                ((##fx= _g109258_ 1)
                 (apply (lambda (_%in108705%_) (read-syntax__% _%in108705%_))
                        _g109259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g109259_))))))
    (define read-syntax-from-file
      (lambda (_%path108690%_)
        (let ((_%r108692%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path108690%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r108692%_)
              (cdr (__AST-e (vector-ref _%r108692%_ '1)))
              (error (err-code->string _%r108692%_) _%path108690%_)))))
    (define __wrap-syntax
      (lambda (_%re108687%_ _%e108688%_)
        (if (eof-object? _%e108688%_)
            _%e108688%_
            (##structure AST::t _%e108688%_ (##readenv->locat _%re108687%_)))))
    (define __unwrap-syntax
      (lambda (_%re108684%_ _%e108685%_) (__AST-e _%e108685%_)))
    (define __pp-syntax
      (lambda (_%stx108682%_) (pp (__AST->datum _%stx108682%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt108680%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt108680%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt108680%_ '@list)
          (macro-readtable-brace-handler-set! _%rt108680%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt108680%_
           '#\!
           __read-sharp-bang)
          _%rt108680%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt108676%_ _%kw108677%_)
        (macro-readtable-bracket-handler-set! _%rt108676%_ _%kw108677%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt108673%_ _%kw108674%_)
        (macro-readtable-brace-handler-set! _%rt108673%_ _%kw108674%_)))
    (define __read-sharp-bang
      (lambda (_%re108664%_ _%next108665%_ _%start-pos108666%_)
        (if (eq? _%start-pos108666%_ '0)
            (let* ((_%line108668%_
                    (##read-line
                     (macro-readenv-port _%re108664%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line108670%_
                    (substring
                     _%line108668%_
                     '1
                     (string-length _%line108668%_))))
              (macro-readenv-script-line-set!
               _%re108664%_
               _%script-line108670%_)
              (##script-marker))
            (##read-sharp-bang
             _%re108664%_
             _%next108665%_
             _%start-pos108666%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj108662%_)
        (if (source-location? _%obj108662%_)
            (string? (##locat-container _%obj108662%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj108660%_)
        (if (##locat? _%obj108660%_)
            (##container->path (##locat-container _%obj108660%_))
            '#f)))))
