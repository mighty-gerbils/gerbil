(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1712643207)
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
      (lambda _%$args108428%_
        (apply make-instance SyntaxError::t _%$args108428%_)))
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
      (lambda (_%self108312%_ _%port108313%_)
        (let ((_%self108316%_ _%self108312%_))
          (letrec ((_%location108326%_
                    (lambda ()
                      (let _%lp108388%_ ((_%rest108390%_
                                          (##unchecked-structure-ref
                                           _%self108316%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest108391108399%_ _%rest108390%_)
                               (_%else108393108407%_ (lambda () '#f))
                               (_%K108395108416%_
                                (lambda (_%rest108410%_ _%hd108411%_)
                                  (let ((_%$e108413%_
                                         (__AST-source _%hd108411%_)))
                                    (if _%$e108413%_
                                        _%$e108413%_
                                        (_%lp108388%_ _%rest108410%_))))))
                          (if (##pair? _%rest108391108399%_)
                              (let ((_%hd108396108419%_
                                     (##car _%rest108391108399%_))
                                    (_%tl108397108421%_
                                     (##cdr _%rest108391108399%_)))
                                (let* ((_%hd108424%_ _%hd108396108419%_)
                                       (_%rest108426%_ _%tl108397108421%_))
                                  (_%K108395108416%_
                                   _%rest108426%_
                                   _%hd108424%_)))
                              (_%else108393108407%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e108329%_ (_%location108326%_)))
                 (if _%$e108329%_
                     ((lambda (_%where108332%_)
                        (##display-locat _%where108332%_ '#t _%port108313%_))
                      _%$e108329%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e108335%_
                      (##unchecked-structure-ref _%self108316%_ '4 '#f '#f)))
                 (if _%$e108335%_
                     ((lambda (_%where108338%_)
                        (displayln
                         '" at "
                         _%where108338%_
                         '": "
                         (##unchecked-structure-ref
                          _%self108316%_
                          '2
                          '#f
                          '#f)))
                      _%$e108335%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self108316%_ '2 '#f '#f))))
               (let* ((_%self.irritants108340108348%_
                       (##unchecked-structure-ref _%self108316%_ '3 '#f '#f))
                      (_%else108342108356%_ (lambda () '#!void))
                      (_%K108344108369%_
                       (lambda (_%rest108359%_ _%stx108360%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx108360%_)
                         (for-each
                          (lambda (_%detail108362%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail108362%_))
                            (let ((_%$e108364%_
                                   (__AST-source _%detail108362%_)))
                              (if _%$e108364%_
                                  ((lambda (_%loc108367%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc108367%_
                                      '#t
                                      _%port108313%_))
                                   _%$e108364%_)
                                  '#!void))
                            (newline))
                          _%rest108359%_))))
                 (if (##pair? _%self.irritants108340108348%_)
                     (let ((_%hd108345108372%_
                            (##car _%self.irritants108340108348%_))
                           (_%tl108346108374%_
                            (##cdr _%self.irritants108340108348%_)))
                       (let* ((_%stx108377%_ _%hd108345108372%_)
                              (_%rest108379%_ _%tl108346108374%_))
                         (_%K108344108369%_ _%rest108379%_ _%stx108377%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont108380108382%_
                          (##unchecked-structure-ref
                           _%self108316%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont108380108382%_
                         (let ((_%cont108385%_ _%cont108380108382%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont108385%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port108313%_)))))
    (__bind-method!
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message108183%_
               _%irritants108184%_
               _%where108185%_
               _%context108186%_
               _%marks108187%_
               _%phi108188%_)
        (let ((__obj108525
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj108525 _%message108183%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj108525
           _%irritants108184%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj108525 _%where108185%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj108525 _%context108186%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj108525 _%marks108187%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj108525 _%phi108188%_ '6 '#f '#f)
          __obj108525)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where108178%_
               _%message108179%_
               _%stx108180%_
               .
               _%details108181%_)
        (raise (make-syntax-error
                _%message108179%_
                (cons _%stx108180%_ _%details108181%_)
                _%where108178%_
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
      (lambda _%$args108175%_ (apply make-instance AST::t _%$args108175%_)))
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
      (lambda (_%stx108173%_)
        (if (##structure-instance-of? _%stx108173%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx108173%_ '1 '#f '#f)
            _%stx108173%_)))
    (define __AST-source
      (lambda (_%stx108164%_)
        (let _%lp108166%_ ((_%src108168%_ _%stx108164%_))
          (if (##structure-instance-of? _%src108168%_ 'gerbil#AST::t)
              (_%lp108166%_
               (##unchecked-structure-ref _%src108168%_ '2 '#f '#f))
              (if (##locat? _%src108168%_) _%src108168%_ '#f)))))
    (define __AST
      (lambda (_%e108156%_ _%src-stx108157%_)
        (let ((_%src108159%_ (__AST-source _%src-stx108157%_)))
          (if (or (##structure-instance-of? _%e108156%_ 'gerbil#AST::t)
                  (not _%src108159%_))
              _%e108156%_
              (##structure AST::t _%e108156%_ _%src108159%_)))))
    (define __AST-eq?
      (lambda (_%stx108153%_ _%obj108154%_)
        (eq? (__AST-e _%stx108153%_) _%obj108154%_)))
    (define __AST-pair?
      (lambda (_%stx108151%_) (pair? (__AST-e _%stx108151%_))))
    (define __AST-null?
      (lambda (_%stx108149%_) (null? (__AST-e _%stx108149%_))))
    (define __AST-datum?
      (lambda (_%stx108130%_)
        (let* ((_%e108132%_ (__AST-e _%stx108130%_))
               (_%$e108134%_ (number? _%e108132%_)))
          (if _%$e108134%_
              _%$e108134%_
              (let ((_%$e108137%_ (string? _%e108132%_)))
                (if _%$e108137%_
                    _%$e108137%_
                    (let ((_%$e108140%_ (char? _%e108132%_)))
                      (if _%$e108140%_
                          _%$e108140%_
                          (let ((_%$e108143%_ (keyword? _%e108132%_)))
                            (if _%$e108143%_
                                _%$e108143%_
                                (let ((_%$e108146%_ (boolean? _%e108132%_)))
                                  (if _%$e108146%_
                                      _%$e108146%_
                                      (eq? _%e108132%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx108128%_) (symbol? (__AST-e _%stx108128%_))))
    (define __AST-id-list?__%
      (lambda (_%stx108079%_ _%tail?108080%_)
        (let _%lp108082%_ ((_%rest108084%_ _%stx108079%_))
          (let* ((_%$e108086%_ _%rest108084%_)
                 (_%$E108088108101%_
                  (lambda ()
                    (let* ((_%$E108089108096%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108086%_)))
                           (_%rest108099%_ _%$e108086%_))
                      (_%tail?108080%_ _%rest108099%_)))))
            (if (__AST-pair? _%$e108086%_)
                (let* ((_%$tgt108090108104%_ (__AST-e _%$e108086%_))
                       (_%$hd108091108107%_ (##car _%$tgt108090108104%_))
                       (_%$tl108092108110%_ (##cdr _%$tgt108090108104%_))
                       (_%hd108114%_ _%$hd108091108107%_)
                       (_%rest108116%_ _%$tl108092108110%_))
                  (if (__AST-id? _%hd108114%_)
                      (_%lp108082%_ _%rest108116%_)
                      '#f))
                (_%$E108088108101%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx108121%_)
        (let ((_%tail?108123%_ __AST-null?))
          (__AST-id-list?__% _%stx108121%_ _%tail?108123%_))))
    (define __AST-id-list?
      (lambda _g108528_
        (let ((_g108527_ (##length _g108528_)))
          (cond ((##fx= _g108527_ 1) (apply __AST-id-list?__0 _g108528_))
                ((##fx= _g108527_ 2) (apply __AST-id-list?__% _g108528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g108528_))))))
    (define __AST-bind-list?
      (lambda (_%stx108071%_)
        (__AST-id-list?__%
         _%stx108071%_
         (lambda (_%e108073%_)
           (let ((_%$e108075%_ (__AST-null? _%e108073%_)))
             (if _%$e108075%_ _%$e108075%_ (__AST-id? _%e108073%_)))))))
    (define __AST-list?__%
      (lambda (_%stx108024%_ _%tail?108025%_)
        (let _%lp108027%_ ((_%rest108029%_ _%stx108024%_))
          (let* ((_%$e108031%_ _%rest108029%_)
                 (_%$E108033108046%_
                  (lambda ()
                    (let* ((_%$E108034108041%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e108031%_)))
                           (_%rest108044%_ _%$e108031%_))
                      (_%tail?108025%_ _%rest108044%_)))))
            (if (__AST-pair? _%$e108031%_)
                (let* ((_%$tgt108035108049%_ (__AST-e _%$e108031%_))
                       (_%$hd108036108052%_ (##car _%$tgt108035108049%_))
                       (_%$tl108037108055%_ (##cdr _%$tgt108035108049%_))
                       (_%rest108059%_ _%$tl108037108055%_))
                  (_%lp108027%_ _%rest108059%_))
                (_%$E108033108046%_))))))
    (define __AST-list?__0
      (lambda (_%stx108064%_)
        (let ((_%tail?108066%_ __AST-null?))
          (__AST-list?__% _%stx108064%_ _%tail?108066%_))))
    (define __AST-list?
      (lambda _g108530_
        (let ((_g108529_ (##length _g108530_)))
          (cond ((##fx= _g108529_ 1) (apply __AST-list?__0 _g108530_))
                ((##fx= _g108529_ 2) (apply __AST-list?__% _g108530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g108530_))))))
    (define __AST->list
      (lambda (_%stx107989%_)
        (let* ((_%$e107991%_ _%stx107989%_)
               (_%$E107993108006%_
                (lambda ()
                  (let* ((_%$E107994108001%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e107991%_)))
                         (_%rest108004%_ _%$e107991%_))
                    (__AST-e _%rest108004%_)))))
          (if (__AST-pair? _%$e107991%_)
              (let* ((_%$tgt107995108009%_ (__AST-e _%$e107991%_))
                     (_%$hd107996108012%_ (##car _%$tgt107995108009%_))
                     (_%$tl107997108015%_ (##cdr _%$tgt107995108009%_))
                     (_%hd108019%_ _%$hd107996108012%_)
                     (_%rest108021%_ _%$tl107997108015%_))
                (cons _%hd108019%_ (__AST->list _%rest108021%_)))
              (_%$E107993108006%_)))))
    (define __AST->datum
      (lambda (_%stx107982%_)
        (if (##structure-instance-of? _%stx107982%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx107982%_))
            (if (pair? _%stx107982%_)
                (cons (__AST->datum (car _%stx107982%_))
                      (__AST->datum (cdr _%stx107982%_)))
                (if (vector? _%stx107982%_)
                    (vector-map __AST->datum _%stx107982%_)
                    (if (box? _%stx107982%_)
                        (box (__AST->datum (unbox _%stx107982%_)))
                        _%stx107982%_))))))
    (define get-readenv
      (lambda (_%port107980%_)
        (##make-readenv
         _%port107980%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in107968%_)
        (let ((_%e107970%_ (##read-datum-or-eof (get-readenv _%in107968%_))))
          (if (eof-object? (__AST-e _%e107970%_))
              (__AST-e _%e107970%_)
              _%e107970%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in107976%_ (current-input-port)))
          (read-syntax__% _%in107976%_))))
    (define read-syntax
      (lambda _g108532_
        (let ((_g108531_ (##length _g108532_)))
          (cond ((##fx= _g108531_ 0) (apply read-syntax__0 _g108532_))
                ((##fx= _g108531_ 1) (apply read-syntax__% _g108532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g108532_))))))
    (define read-syntax-from-file
      (lambda (_%path107963%_)
        (let ((_%r107965%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path107963%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r107965%_)
              (cdr (__AST-e (vector-ref _%r107965%_ '1)))
              (error (err-code->string _%r107965%_) _%path107963%_)))))
    (define __wrap-syntax
      (lambda (_%re107960%_ _%e107961%_)
        (if (eof-object? _%e107961%_)
            _%e107961%_
            (##structure AST::t _%e107961%_ (##readenv->locat _%re107960%_)))))
    (define __unwrap-syntax
      (lambda (_%re107957%_ _%e107958%_) (__AST-e _%e107958%_)))
    (define __pp-syntax
      (lambda (_%stx107955%_) (pp (__AST->datum _%stx107955%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt107953%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt107953%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt107953%_ '@list)
          (macro-readtable-brace-handler-set! _%rt107953%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt107953%_
           '#\!
           __read-sharp-bang)
          _%rt107953%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt107949%_ _%kw107950%_)
        (macro-readtable-bracket-handler-set! _%rt107949%_ _%kw107950%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt107946%_ _%kw107947%_)
        (macro-readtable-brace-handler-set! _%rt107946%_ _%kw107947%_)))
    (define __read-sharp-bang
      (lambda (_%re107937%_ _%next107938%_ _%start-pos107939%_)
        (if (eq? _%start-pos107939%_ '0)
            (let* ((_%line107941%_
                    (##read-line
                     (macro-readenv-port _%re107937%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line107943%_
                    (substring
                     _%line107941%_
                     '1
                     (string-length _%line107941%_))))
              (macro-readenv-script-line-set!
               _%re107937%_
               _%script-line107943%_)
              (##script-marker))
            (##read-sharp-bang
             _%re107937%_
             _%next107938%_
             _%start-pos107939%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj107935%_)
        (if (source-location? _%obj107935%_)
            (string? (##locat-container _%obj107935%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj107933%_)
        (if (##locat? _%obj107933%_)
            (##container->path (##locat-container _%obj107933%_))
            '#f)))))
